package java.util.concurrent;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/CompletableFuture.class
 */
public class CompletableFuture<T> implements Future<T>, CompletionStage<T> {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/CompletableFuture$AsynchronousCompletionTask.class
 */
    public interface AsynchronousCompletionTask {
    }

    @Override
    public CompletionStage runAfterEitherAsync(CompletionStage completionStage, Runnable runnable, Executor executor) {
        return runAfterEitherAsync((CompletionStage<?>) completionStage, runnable, executor);
    }

    @Override
    public CompletionStage runAfterEitherAsync(CompletionStage completionStage, Runnable runnable) {
        return runAfterEitherAsync((CompletionStage<?>) completionStage, runnable);
    }

    @Override
    public CompletionStage runAfterEither(CompletionStage completionStage, Runnable runnable) {
        return runAfterEither((CompletionStage<?>) completionStage, runnable);
    }

    @Override
    public CompletionStage runAfterBothAsync(CompletionStage completionStage, Runnable runnable, Executor executor) {
        return runAfterBothAsync((CompletionStage<?>) completionStage, runnable, executor);
    }

    @Override
    public CompletionStage runAfterBothAsync(CompletionStage completionStage, Runnable runnable) {
        return runAfterBothAsync((CompletionStage<?>) completionStage, runnable);
    }

    @Override
    public CompletionStage runAfterBoth(CompletionStage completionStage, Runnable runnable) {
        return runAfterBoth((CompletionStage<?>) completionStage, runnable);
    }

    public CompletableFuture() {
        throw new RuntimeException("Stub!");
    }

    public static <U> CompletableFuture<U> supplyAsync(Supplier<U> supplier) {
        throw new RuntimeException("Stub!");
    }

    public static <U> CompletableFuture<U> supplyAsync(Supplier<U> supplier, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    public static CompletableFuture<Void> runAsync(Runnable runnable) {
        throw new RuntimeException("Stub!");
    }

    public static CompletableFuture<Void> runAsync(Runnable runnable, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    public static <U> CompletableFuture<U> completedFuture(U value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public T get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public T join() {
        throw new RuntimeException("Stub!");
    }

    public T getNow(T valueIfAbsent) {
        throw new RuntimeException("Stub!");
    }

    public boolean complete(T value) {
        throw new RuntimeException("Stub!");
    }

    public boolean completeExceptionally(Throwable ex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenApply(Function<? super T, ? extends U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenApplyAsync(Function<? super T, ? extends U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenApplyAsync(Function<? super T, ? extends U> fn2, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenAccept(Consumer<? super T> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenAcceptAsync(Consumer<? super T> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenAcceptAsync(Consumer<? super T> action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenRun(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenRunAsync(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> thenRunAsync(Runnable action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U, V> CompletableFuture<V> thenCombine(CompletionStage<? extends U> other, BiFunction<? super T, ? super U, ? extends V> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U, V> CompletableFuture<V> thenCombineAsync(CompletionStage<? extends U> other, BiFunction<? super T, ? super U, ? extends V> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U, V> CompletableFuture<V> thenCombineAsync(CompletionStage<? extends U> other, BiFunction<? super T, ? super U, ? extends V> fn2, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<Void> thenAcceptBoth(CompletionStage<? extends U> other, BiConsumer<? super T, ? super U> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<Void> thenAcceptBothAsync(CompletionStage<? extends U> other, BiConsumer<? super T, ? super U> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<Void> thenAcceptBothAsync(CompletionStage<? extends U> other, BiConsumer<? super T, ? super U> action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterBoth(CompletionStage<?> other, Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterBothAsync(CompletionStage<?> other, Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterBothAsync(CompletionStage<?> other, Runnable action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> applyToEither(CompletionStage<? extends T> other, Function<? super T, U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> applyToEitherAsync(CompletionStage<? extends T> other, Function<? super T, U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> applyToEitherAsync(CompletionStage<? extends T> other, Function<? super T, U> fn2, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> acceptEither(CompletionStage<? extends T> other, Consumer<? super T> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> acceptEitherAsync(CompletionStage<? extends T> other, Consumer<? super T> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> acceptEitherAsync(CompletionStage<? extends T> other, Consumer<? super T> action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterEither(CompletionStage<?> other, Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterEitherAsync(CompletionStage<?> other, Runnable action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<Void> runAfterEitherAsync(CompletionStage<?> other, Runnable action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenCompose(Function<? super T, ? extends CompletionStage<U>> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenComposeAsync(Function<? super T, ? extends CompletionStage<U>> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> thenComposeAsync(Function<? super T, ? extends CompletionStage<U>> fn2, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<T> whenComplete(BiConsumer<? super T, ? super Throwable> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<T> whenCompleteAsync(BiConsumer<? super T, ? super Throwable> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<T> whenCompleteAsync(BiConsumer<? super T, ? super Throwable> action, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> handle(BiFunction<? super T, Throwable, ? extends U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> handleAsync(BiFunction<? super T, Throwable, ? extends U> fn2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <U> CompletableFuture<U> handleAsync(BiFunction<? super T, Throwable, ? extends U> fn2, Executor executor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<T> toCompletableFuture() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CompletableFuture<T> exceptionally(Function<Throwable, ? extends T> fn2) {
        throw new RuntimeException("Stub!");
    }

    public static CompletableFuture<Void> allOf(CompletableFuture<?>... cfs) {
        throw new RuntimeException("Stub!");
    }

    public static CompletableFuture<Object> anyOf(CompletableFuture<?>... cfs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isCancelled() {
        throw new RuntimeException("Stub!");
    }

    public boolean isCompletedExceptionally() {
        throw new RuntimeException("Stub!");
    }

    public void obtrudeValue(T value) {
        throw new RuntimeException("Stub!");
    }

    public void obtrudeException(Throwable ex) {
        throw new RuntimeException("Stub!");
    }

    public int getNumberOfDependents() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
