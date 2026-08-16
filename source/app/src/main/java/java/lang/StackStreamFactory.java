package java.lang;

import java.lang.StackWalker;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.reflect.ConstructorAccessor;
import jdk.internal.reflect.MethodAccessor;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ContinuationScope;

public final class StackStreamFactory {
    private static final int RESERVED_ELEMENTS = 1;
    private static final int MIN_BATCH_SIZE = 3;
    private static final int SMALL_BATCH = 8;
    private static final int BATCH_SIZE = 32;
    private static final int LARGE_BATCH_SIZE = 256;
    private static final int DEFAULT_MODE = 0;
    private static final int CLASS_INFO_ONLY = 2;
    private static final int SHOW_HIDDEN_FRAMES = 32;
    private static final int FILL_LIVE_STACK_FRAMES = 256;
    private static final Set<Class<?>> stackWalkImplClasses = init();
    static final boolean isDebug = "true".equals(System.getProperty("stackwalk.debug"));

    public enum WalkerState {
        NEW,
        OPEN,
        CLOSED
    }

    private static native boolean checkStackWalkModes();

    private StackStreamFactory() {
    }

    public static <T> StackFrameTraverser<T> makeStackTraverser(StackWalker walker, Function<? super Stream<StackWalker.StackFrame>, ? extends T> function) {
        if (walker.hasLocalsOperandsOption()) {
            return new LiveStackInfoTraverser(walker, function);
        }
        return new StackFrameTraverser<>(walker, function);
    }

    public static CallerClassFinder makeCallerFinder(StackWalker walker) {
        return new CallerClassFinder(walker);
    }

    private static int toStackWalkMode(StackWalker walker, int mode) {
        int newMode = mode;
        if (walker.hasOption(StackWalker.Option.DROP_METHOD_INFO)) {
            newMode |= 2;
        }
        if (walker.hasOption(StackWalker.Option.SHOW_HIDDEN_FRAMES)) {
            newMode |= 32;
        }
        if (walker.hasLocalsOperandsOption()) {
            newMode |= 256;
        }
        return newMode;
    }

    public static abstract class AbstractStackWalker<R, T> {
        protected final StackWalker walker;
        protected final Thread thread;
        protected final int maxDepth;
        protected final int mode;
        protected int depth;
        protected FrameBuffer<? extends T> frameBuffer;
        protected long anchor;
        protected final ContinuationScope contScope;
        protected Continuation continuation;

        protected abstract R consumeFrames();

        protected abstract void initFrameBuffer();

        protected abstract int batchSize(int i10);

        private native R callStackWalk(int i10, int i11, ContinuationScope continuationScope, Continuation continuation, int i12, int i13, T[] tArr);

        private native int fetchStackFrames(int i10, long j10, int i11, int i12, int i13, T[] tArr);

        private native void setContinuation(long j10, T[] tArr, Continuation continuation);

        protected AbstractStackWalker(StackWalker walker, int mode) {
            this(walker, mode, Integer.MAX_VALUE);
        }

        protected AbstractStackWalker(StackWalker walker, int mode, int maxDepth) {
            this.thread = Thread.currentThread();
            this.mode = mode;
            this.walker = walker;
            this.maxDepth = maxDepth;
            this.depth = 0;
            ContinuationScope scope = walker.getContScope();
            if (scope == null && this.thread.isVirtual()) {
                this.contScope = VirtualThread.continuationScope();
                this.continuation = null;
            } else {
                this.contScope = scope;
                this.continuation = walker.getContinuation();
            }
        }

        protected int getNextBatchSize() {
            int lastBatchSize = this.depth == 0 ? 0 : this.frameBuffer.currentBatchSize();
            int nextBatchSize = batchSize(lastBatchSize);
            if (StackStreamFactory.isDebug) {
                System.err.println("last batch size = " + lastBatchSize + " next batch size = " + nextBatchSize);
            }
            if (nextBatchSize >= 3) {
                return nextBatchSize;
            }
            return 3;
        }

        final void checkState(WalkerState state) {
            if (this.thread != Thread.currentThread()) {
                throw new IllegalStateException("Invalid thread walking this stack stream: " + Thread.currentThread().getName() + " " + this.thread.getName());
            }
            switch (state) {
                case NEW:
                    if (this.anchor != 0) {
                        throw new IllegalStateException("This stack stream is being reused.");
                    }
                    return;
                case OPEN:
                    if (this.anchor == 0 || this.anchor == -1) {
                        throw new IllegalStateException("This stack stream is not valid for walking.");
                    }
                    return;
                case CLOSED:
                    if (this.anchor != -1) {
                        throw new IllegalStateException("This stack stream is not closed.");
                    }
                    return;
                default:
                    return;
            }
        }

        private void close() {
            this.anchor = -1L;
        }

        public final R walk() {
            checkState(WalkerState.NEW);
            if (this.continuation != null) {
                return (R) Continuation.wrapWalk(this.continuation, this.contScope, this::walkHelper);
            }
            return walkHelper();
        }

        private final R walkHelper() {
            try {
                return beginStackWalk();
            } finally {
                close();
            }
        }

        private boolean skipReflectionFrames() {
            return (this.walker.hasOption(StackWalker.Option.SHOW_REFLECT_FRAMES) || this.walker.hasOption(StackWalker.Option.SHOW_HIDDEN_FRAMES)) ? false : true;
        }

        final Class<?> peekFrame() {
            while (this.frameBuffer.isActive() && this.depth < this.maxDepth) {
                if (this.frameBuffer.isEmpty()) {
                    getNextBatch();
                } else {
                    Class<?> c10 = this.frameBuffer.get();
                    if (skipReflectionFrames() && StackStreamFactory.isReflectionFrame(c10)) {
                        if (StackStreamFactory.isDebug) {
                            System.err.println("  skip: frame " + this.frameBuffer.getIndex() + " " + ((Object) c10));
                        }
                        this.frameBuffer.next();
                        this.depth++;
                    } else {
                        return c10;
                    }
                }
            }
            return null;
        }

        private Object doStackWalk(long anchor, int skipFrames, int numFrames, int bufStartIndex, int bufEndIndex) {
            checkState(WalkerState.NEW);
            this.frameBuffer.check(skipFrames);
            if (StackStreamFactory.isDebug) {
                System.err.format("doStackWalk: skip %d start %d end %d nframes %d%n", Integer.valueOf(skipFrames), Integer.valueOf(bufStartIndex), Integer.valueOf(bufEndIndex), Integer.valueOf(numFrames));
            }
            this.anchor = anchor;
            this.frameBuffer.setBatch(this.depth, bufStartIndex, numFrames);
            return consumeFrames();
        }

        private int getNextBatch() {
            if (!this.frameBuffer.isActive() || this.depth == this.maxDepth || (this.frameBuffer.isAtBottom() && !hasMoreContinuations())) {
                if (StackStreamFactory.isDebug) {
                    System.out.format("  more stack walk done%n", new Object[0]);
                }
                this.frameBuffer.freeze();
                return 0;
            }
            if (this.frameBuffer.isAtBottom() && hasMoreContinuations()) {
                if (StackStreamFactory.isDebug) {
                    System.out.format("  set continuation to %s%n", this.continuation.getParent());
                }
                setContinuation(this.continuation.getParent());
            }
            int numFrames = fetchStackFrames();
            if (numFrames == 0 && !hasMoreContinuations()) {
                this.frameBuffer.freeze();
            }
            return numFrames;
        }

        private boolean hasMoreContinuations() {
            return (this.continuation == null || this.continuation.getScope() == this.contScope || this.continuation.getParent() == null) ? false : true;
        }

        private void setContinuation(Continuation cont) {
            this.continuation = cont;
            setContinuation(this.anchor, this.frameBuffer.frames(), cont);
        }

        final Class<?> nextFrame() {
            if (!hasNext()) {
                return null;
            }
            Class<?> c10 = this.frameBuffer.next();
            this.depth++;
            return c10;
        }

        final boolean hasNext() {
            return peekFrame() != null;
        }

        private R beginStackWalk() {
            initFrameBuffer();
            return callStackWalk(this.mode, 0, this.contScope, this.continuation, this.frameBuffer.currentBatchSize(), this.frameBuffer.startIndex(), this.frameBuffer.frames());
        }

        private int fetchStackFrames() {
            int startIndex = this.frameBuffer.startIndex();
            int lastBatchFrameCount = this.frameBuffer.numFrames();
            int batchSize = getNextBatchSize();
            this.frameBuffer.resize(batchSize);
            int numFrames = fetchStackFrames(this.mode, this.anchor, lastBatchFrameCount, batchSize, startIndex, this.frameBuffer.frames());
            if (StackStreamFactory.isDebug) {
                System.out.format("  more stack walk got %d frames start %d batch size %d%n", Integer.valueOf(numFrames), Integer.valueOf(this.frameBuffer.startIndex()), Integer.valueOf(batchSize));
            }
            this.frameBuffer.setBatch(this.depth, startIndex, numFrames);
            return numFrames;
        }
    }

    public static class StackFrameTraverser<T> extends AbstractStackWalker<T, StackWalker.StackFrame> implements Spliterator<StackWalker.StackFrame> {
        private static final int CHARACTERISTICS = 1040;
        final Function<? super Stream<StackWalker.StackFrame>, ? extends T> function;

        static {
            StackStreamFactory.stackWalkImplClasses.add(StackFrameTraverser.class);
        }

        StackFrameTraverser(StackWalker walker, Function<? super Stream<StackWalker.StackFrame>, ? extends T> function) {
            super(walker, StackStreamFactory.toStackWalkMode(walker, 0));
            this.function = function;
        }

        StackWalker.StackFrame nextStackFrame() {
            if (!hasNext()) {
                return null;
            }
            StackWalker.StackFrame frame = (StackWalker.StackFrame) this.frameBuffer.nextStackFrame();
            this.depth++;
            return frame;
        }

        @Override
        protected T consumeFrames() {
            checkState(WalkerState.OPEN);
            Stream<StackWalker.StackFrame> stream = StreamSupport.stream(this, false);
            if (this.function != null) {
                return this.function.apply(stream);
            }
            throw new UnsupportedOperationException();
        }

        @Override
        protected void initFrameBuffer() {
            FrameBuffer<? extends T> stackFrameBuffer;
            if (this.walker.hasOption(StackWalker.Option.DROP_METHOD_INFO)) {
                stackFrameBuffer = new ClassFrameBuffer(this.walker, getNextBatchSize());
            } else {
                stackFrameBuffer = new StackFrameBuffer<>(StackFrameInfo.class, this.walker, getNextBatchSize());
            }
            this.frameBuffer = stackFrameBuffer;
        }

        @Override
        protected int batchSize(int lastBatchSize) {
            if (lastBatchSize == 0) {
                if (this.walker.estimateDepth() == 0) {
                    return 8;
                }
                return Math.min(this.walker.estimateDepth() + 1, 256);
            }
            if (lastBatchSize > 32 || !this.frameBuffer.isFull()) {
                return lastBatchSize;
            }
            return Math.min(lastBatchSize * 2, 32);
        }

        @Override
        public Spliterator<StackWalker.StackFrame> trySplit() {
            return null;
        }

        @Override
        public long estimateSize() {
            return this.maxDepth;
        }

        @Override
        public int characteristics() {
            return 1040;
        }

        @Override
        public void forEachRemaining(Consumer<? super StackWalker.StackFrame> action) {
            StackWalker.StackFrame frame;
            checkState(WalkerState.OPEN);
            for (int n10 = 0; n10 < this.maxDepth && (frame = nextStackFrame()) != null; n10++) {
                action.accept(frame);
            }
        }

        @Override
        public boolean tryAdvance(Consumer<? super StackWalker.StackFrame> action) {
            checkState(WalkerState.OPEN);
            int index = this.frameBuffer.getIndex();
            if (hasNext()) {
                StackWalker.StackFrame frame = nextStackFrame();
                action.accept(frame);
                if (StackStreamFactory.isDebug) {
                    System.err.println("tryAdvance: " + index + " " + ((Object) frame));
                    return true;
                }
                return true;
            }
            if (StackStreamFactory.isDebug) {
                System.err.println("tryAdvance: " + index + " NO element");
                return false;
            }
            return false;
        }
    }

    static class StackFrameBuffer<T extends ClassFrameInfo> extends FrameBuffer<T> {
        final StackWalker walker;
        private final Class<T> type;
        private final Constructor<T> ctor;
        private T[] stackFrames;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !StackStreamFactory.class.desiredAssertionStatus();
        }

        StackFrameBuffer(Class<T> cls, StackWalker stackWalker, int i10) {
            super(i10);
            this.walker = stackWalker;
            this.type = cls;
            try {
                this.ctor = cls.getDeclaredConstructor(StackWalker.class);
                this.stackFrames = fill(allocateArray(i10), 1, i10);
            } catch (NoSuchMethodException e10) {
                throw new InternalError(e10);
            }
        }

        @Override
        public T[] frames() {
            return this.stackFrames;
        }

        T[] allocateArray(int i10) {
            return (T[]) ((ClassFrameInfo[]) Array.newInstance((Class<?>) this.type, i10));
        }

        T[] fill(T[] array, int startIndex, int size) {
            for (int i10 = startIndex; i10 < size; i10++) {
                try {
                    array[i10] = this.ctor.newInstance(this.walker);
                } catch (ReflectiveOperationException e10) {
                    throw new InternalError(e10);
                }
            }
            return array;
        }

        @Override
        void resize(int size) {
            if (!isActive()) {
                throw new IllegalStateException("inactive frame buffer can't be resized");
            }
            if (!$assertionsDisabled && startIndex() != 1) {
                throw new AssertionError((Object) ("bad start index " + startIndex() + " expected 1"));
            }
            if (this.stackFrames.length < size) {
                T[] newFrames = allocateArray(size);
                System.arraycopy(this.stackFrames, 0, newFrames, 0, startIndex());
                this.stackFrames = newFrames;
            }
            fill(this.stackFrames, startIndex(), size);
            this.currentBatchSize = size;
        }

        @Override
        public T nextStackFrame() {
            if (isEmpty()) {
                throw new NoSuchElementException("origin=" + this.origin + " fence=" + this.fence);
            }
            T frame = this.stackFrames[this.origin];
            this.origin++;
            return frame;
        }

        @Override
        final Class<?> at(int index) {
            return this.stackFrames[index].declaringClass();
        }
    }

    static class ClassFrameBuffer extends StackFrameBuffer<ClassFrameInfo> {
        ClassFrameBuffer(StackWalker walker, int initialBatchSize) {
            super(ClassFrameInfo.class, walker, initialBatchSize);
        }

        @Override
        ClassFrameInfo[] allocateArray(int size) {
            return new ClassFrameInfo[size];
        }

        @Override
        ClassFrameInfo[] fill(ClassFrameInfo[] array, int startIndex, int size) {
            for (int i10 = startIndex; i10 < size; i10++) {
                array[i10] = new ClassFrameInfo(this.walker);
            }
            return array;
        }
    }

    public static final class CallerClassFinder extends AbstractStackWalker<Integer, ClassFrameInfo> {
        private Class<?> caller;

        static {
            StackStreamFactory.stackWalkImplClasses.add(CallerClassFinder.class);
        }

        CallerClassFinder(StackWalker walker) {
            super(walker, StackStreamFactory.toStackWalkMode(walker, 2));
        }

        public Class<?> findCaller() {
            walk();
            return this.caller;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Integer consumeFrames() {
            ClassFrameInfo curFrame;
            checkState(WalkerState.OPEN);
            int n10 = 0;
            ClassFrameInfo[] frames = new ClassFrameInfo[2];
            while (n10 < 2 && hasNext() && (curFrame = (ClassFrameInfo) this.frameBuffer.nextStackFrame()) != null) {
                this.caller = curFrame.declaringClass();
                if (curFrame.isHidden() || StackStreamFactory.isReflectionFrame(this.caller) || StackStreamFactory.isMethodHandleFrame(this.caller)) {
                    if (StackStreamFactory.isDebug) {
                        System.err.println("  skip: frame " + this.frameBuffer.getIndex() + " " + ((Object) curFrame));
                    }
                } else {
                    int i10 = n10;
                    n10++;
                    frames[i10] = curFrame;
                }
            }
            if (StackStreamFactory.isDebug) {
                System.err.println("0: " + ((Object) frames[0]));
                System.err.println("1: " + ((Object) frames[1]));
            }
            if (frames[1] == null) {
                throw new IllegalCallerException("no caller frame: " + Arrays.toString(frames));
            }
            if (frames[0].isCallerSensitive()) {
                throw new UnsupportedOperationException("StackWalker::getCallerClass called from @CallerSensitive " + Arrays.toString(frames));
            }
            return Integer.valueOf(n10);
        }

        @Override
        protected void initFrameBuffer() {
            this.frameBuffer = new ClassFrameBuffer(this.walker, 3);
        }

        @Override
        protected int batchSize(int lastBatchSize) {
            return 8;
        }

        @Override
        protected int getNextBatchSize() {
            return 8;
        }
    }

    public static final class LiveStackInfoTraverser<T> extends StackFrameTraverser<T> {
        static {
            StackStreamFactory.stackWalkImplClasses.add(LiveStackInfoTraverser.class);
        }

        LiveStackInfoTraverser(StackWalker walker, Function<? super Stream<StackWalker.StackFrame>, ? extends T> function) {
            super(walker, function);
        }

        @Override
        protected void initFrameBuffer() {
            this.frameBuffer = new StackFrameBuffer(LiveStackFrameInfo.class, this.walker, getNextBatchSize());
        }
    }

    public static abstract class FrameBuffer<F> {
        static final int START_POS = 1;
        int currentBatchSize;
        int origin;
        int fence;

        abstract F[] frames();

        abstract void resize(int i10);

        abstract Class<?> at(int i10);

        FrameBuffer(int initialBatchSize) {
            if (initialBatchSize < 3) {
                throw new IllegalArgumentException(initialBatchSize + " < minimum batch size: 3");
            }
            this.origin = 1;
            this.fence = 0;
            this.currentBatchSize = initialBatchSize;
        }

        int startIndex() {
            return 1;
        }

        F nextStackFrame() {
            throw new InternalError("should not reach here");
        }

        final int currentBatchSize() {
            return this.currentBatchSize;
        }

        final boolean isEmpty() {
            return this.origin >= this.fence || (this.origin == 1 && this.fence == 0);
        }

        final int numFrames() {
            if (!isActive()) {
                throw new IllegalStateException();
            }
            return this.fence - startIndex();
        }

        final void freeze() {
            this.origin = 0;
            this.fence = 0;
        }

        final boolean isActive() {
            return this.origin > 0;
        }

        final boolean isFull() {
            return this.fence == this.currentBatchSize;
        }

        final boolean isAtBottom() {
            return this.origin > 0 && this.origin >= this.fence && this.fence < this.currentBatchSize;
        }

        final Class<?> next() {
            if (isEmpty()) {
                throw new NoSuchElementException("origin=" + this.origin + " fence=" + this.fence);
            }
            Class<?> c10 = at(this.origin);
            this.origin++;
            if (StackStreamFactory.isDebug) {
                int index = this.origin - 1;
                System.out.format("  next frame at %d: %s (origin %d fence %d)%n", Integer.valueOf(index), c10.getName(), Integer.valueOf(index), Integer.valueOf(this.fence));
            }
            return c10;
        }

        final Class<?> get() {
            if (isEmpty()) {
                throw new NoSuchElementException("origin=" + this.origin + " fence=" + this.fence);
            }
            return at(this.origin);
        }

        final int getIndex() {
            return this.origin;
        }

        final void setBatch(int depth, int startIndex, int numFrames) {
            if (startIndex <= 0 || numFrames < 0) {
                throw new IllegalArgumentException("startIndex=" + startIndex + " numFrames=" + numFrames);
            }
            this.origin = startIndex;
            this.fence = startIndex + numFrames;
            for (int i10 = startIndex; i10 < this.fence; i10++) {
                if (StackStreamFactory.isDebug) {
                    System.err.format("  frame %d: %s%n", Integer.valueOf(i10), at(i10));
                }
                if (depth == 0 && StackStreamFactory.filterStackWalkImpl(at(i10))) {
                    this.origin++;
                } else {
                    return;
                }
            }
        }

        final void check(int skipFrames) {
            int index = skipFrames + 1;
            if (this.origin != index) {
                throw new IllegalStateException("origin " + this.origin + " != " + index);
            }
        }
    }

    private static Set<Class<?>> init() {
        if (!checkStackWalkModes()) {
            throw new InternalError("StackWalker mode values do not match with JVM");
        }
        Set<Class<?>> classes = new HashSet<>();
        classes.add(StackWalker.class);
        classes.add(StackStreamFactory.class);
        classes.add(AbstractStackWalker.class);
        return classes;
    }

    private static boolean filterStackWalkImpl(Class<?> c10) {
        return stackWalkImplClasses.contains(c10) || c10.getPackageName().equals("java.util.stream");
    }

    private static boolean isMethodHandleFrame(Class<?> c10) {
        return c10.getPackageName().equals("java.lang.invoke");
    }

    private static boolean isReflectionFrame(Class<?> c10) {
        return c10 == Method.class || c10 == Constructor.class || MethodAccessor.class.isAssignableFrom(c10) || ConstructorAccessor.class.isAssignableFrom(c10);
    }
}
