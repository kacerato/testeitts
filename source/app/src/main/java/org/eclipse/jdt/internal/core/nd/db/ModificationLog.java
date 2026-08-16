package org.eclipse.jdt.internal.core.nd.db;

import b3.s;
import ei.C13155a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;

public class ModificationLog {
    public static final byte FREE_OPERATION = 4;
    public static final byte MALLOC_OPERATION = 3;
    public static final byte POP_OPERATION = 1;
    public static final byte PUSH_OPERATION = 0;
    public static final byte WRITE_OPERATION = 2;
    private static Map<Integer, Tag> activeTags = new HashMap();
    private long[] buffer0;
    private int[] buffer1;
    private int currentEntries;
    private int insertionPosition;
    private byte[] operation;
    private final ArrayDeque<Tag> operationStack = new ArrayDeque<>();
    private long timer;

    public static class MemoryAccessLog {
        private final List<MemoryOperation> operations;

        public MemoryAccessLog(List<MemoryOperation> list) {
            this.operations = list;
        }

        public List<MemoryOperation> getOperations() {
            return this.operations;
        }

        public boolean hasInconsistentMemoryAllocation() {
            boolean z10;
            boolean z11 = false;
            boolean z12 = false;
            for (MemoryOperation memoryOperation : this.operations) {
                if (memoryOperation.getOperationType() == 3) {
                    z10 = false;
                } else if (memoryOperation.getOperationType() == 4) {
                    z10 = true;
                } else {
                    continue;
                }
                if (!z11) {
                    z11 = true;
                } else if (z12 == z10) {
                    return true;
                }
                z12 = z10;
            }
            return false;
        }

        public MemoryAccessLog reduce(int i10) {
            boolean hasInconsistentMemoryAllocation = hasInconsistentMemoryAllocation();
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            for (MemoryOperation memoryOperation : this.operations) {
                byte operationType = memoryOperation.getOperationType();
                boolean z10 = true;
                if (operationType == 2) {
                    if (i11 < i10) {
                        arrayList.add(memoryOperation);
                    }
                    i11++;
                } else if (operationType == 3) {
                    arrayList.add(memoryOperation);
                    z10 = hasInconsistentMemoryAllocation;
                } else if (operationType == 4) {
                    arrayList.add(memoryOperation);
                }
                if (!z10) {
                    break;
                }
            }
            return new MemoryAccessLog(arrayList);
        }
    }

    public static class MemoryOperation {
        private final int addressSize;
        private final byte operationType;
        private final List<Tag> stack;
        private final long startAddress;
        private final long time;

        public MemoryOperation(byte b10, long j10, long j11, int i10, List<Tag> list) {
            this.operationType = b10;
            this.time = j10;
            this.startAddress = j11;
            this.addressSize = i10;
            this.stack = list;
        }

        public byte getOperationType() {
            return this.operationType;
        }

        public int getSize() {
            return this.addressSize;
        }

        public List<Tag> getStack() {
            return this.stack;
        }

        public long getStartAddress() {
            return this.startAddress;
        }

        public long getTime() {
            return this.time;
        }

        public void printTo(StringBuilder sb2, int i10) {
            ModificationLog.indent(sb2, i10);
            byte operationType = getOperationType();
            if (operationType == 2) {
                sb2.append("wrote");
            } else if (operationType == 3) {
                sb2.append("malloc'd");
            } else if (operationType == 4) {
                sb2.append("freed");
            }
            sb2.append(" [address ");
            sb2.append(this.startAddress);
            sb2.append(", size ");
            sb2.append(this.addressSize);
            sb2.append("] at time ");
            sb2.append(this.time);
            sb2.append("\n");
            ArrayList<Tag> arrayList = new ArrayList();
            arrayList.addAll(getStack());
            Collections.reverse(arrayList);
            for (Tag tag : arrayList) {
                ModificationLog.indent(sb2, i10 + 1);
                sb2.append(String.valueOf(tag.name) + "\n");
            }
        }
    }

    public static class Tag {
        public final String name;
        public final int opNum;

        public Tag(String str, int i10) {
            this.name = str;
            this.opNum = i10;
        }

        public boolean equals(Object obj) {
            return obj != null && getClass() == obj.getClass() && this.opNum == ((Tag) obj).opNum;
        }

        public int hashCode() {
            return 31 + this.opNum;
        }

        public String toString() {
            return String.valueOf(this.opNum) + s.f32937c + this.name;
        }
    }

    public ModificationLog(int i10) {
        allocateBuffers(i10);
    }

    private void addToQueue(byte b10, long j10, int i10) {
        long[] jArr = this.buffer0;
        int i11 = this.insertionPosition;
        jArr[i11] = j10;
        this.buffer1[i11] = i10;
        this.operation[i11] = b10;
        this.insertionPosition = (i11 + 1) % jArr.length;
        int i12 = this.currentEntries;
        if (i12 < jArr.length) {
            this.currentEntries = i12 + 1;
        }
    }

    private void allocateBuffers(int i10) {
        int bufferEntriesFor = getBufferEntriesFor(i10);
        if (bufferEntriesFor != 0) {
            this.buffer0 = new long[bufferEntriesFor];
            this.buffer1 = new int[bufferEntriesFor];
            this.operation = new byte[bufferEntriesFor];
        } else {
            this.buffer0 = null;
            this.buffer1 = null;
            this.operation = null;
        }
    }

    public static Tag createTag(String str) {
        Tag tag = new Tag(str, activeTags.size());
        Map<Integer, Tag> map = activeTags;
        map.put(Integer.valueOf(map.size()), tag);
        return tag;
    }

    private static int getBufferEntriesFor(int i10) {
        return (int) ((i10 * TagBits.HasNullTypeAnnotation) / 13);
    }

    private Tag getTagForId(int i10) {
        return activeTags.get(Integer.valueOf(i10));
    }

    public static void indent(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(C13155a.f85806a);
        }
    }

    public void clear() {
        this.currentEntries = 0;
    }

    public boolean enabled() {
        return this.buffer0 != null;
    }

    public void end(Tag tag) {
        if (enabled()) {
            if (!this.operationStack.getLast().equals(tag)) {
                throw new IllegalStateException();
            }
            this.operationStack.removeLast();
            addToQueue((byte) 1, 0L, tag.opNum);
        }
    }

    public int getBufferEntries() {
        long[] jArr = this.buffer0;
        if (jArr == null) {
            return 0;
        }
        return jArr.length;
    }

    public MemoryAccessLog getReportFor(long j10, int i10) {
        byte b10;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.operationStack);
        ArrayList arrayList2 = new ArrayList();
        long[] jArr = this.buffer0;
        if (jArr != null) {
            int i11 = this.insertionPosition;
            int length = ((jArr.length + i11) - this.currentEntries) % jArr.length;
            byte b11 = 1;
            int length2 = ((i11 + jArr.length) - 1) % jArr.length;
            long j11 = this.timer;
            while (true) {
                long j12 = this.buffer0[length2];
                int i12 = this.buffer1[length2];
                byte b12 = this.operation[length2];
                if (b12 != 0) {
                    if (b12 != b11) {
                        if (j10 >= j12 ? j10 - j12 < i12 : j12 - j10 < i10) {
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.addAll(arrayList);
                            arrayList2.add(new MemoryOperation(b12, j11, j12, i12, arrayList3));
                        }
                        j11--;
                    } else {
                        arrayList.add(getTagForId(i12));
                    }
                    b10 = 1;
                } else {
                    b10 = 1;
                    arrayList.remove(arrayList.size() - 1);
                }
                long[] jArr2 = this.buffer0;
                length2 = ((length2 + jArr2.length) - b10) % jArr2.length;
                if (length2 == length) {
                    break;
                }
                b11 = b10;
            }
        }
        return new MemoryAccessLog(arrayList2);
    }

    public long getWriteCount() {
        return this.timer;
    }

    public void printLog(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = (this.insertionPosition - i10) + i11;
            long[] jArr = this.buffer0;
            int length = i12 % jArr.length;
            byte b10 = this.operation[length];
            if (b10 == 0) {
                System.out.printf("PUSH_OPERATION(tag=%s)\n", activeTags.get(Integer.valueOf(this.buffer1[length])));
            } else if (b10 == 1) {
                System.out.printf("POP_OPERATION(tag=%s)\n", activeTags.get(Integer.valueOf(this.buffer1[length])));
            } else if (b10 == 2) {
                System.out.printf("WRITE_OPERATION(address=%x, size=%d)\n", Long.valueOf(jArr[length]), Integer.valueOf(this.buffer1[length]));
            } else if (b10 == 3) {
                System.out.printf("MALLOC_OPERATION(address=%x, size=%d)\n", Long.valueOf(jArr[length]), Integer.valueOf(this.buffer1[length]));
            } else if (b10 != 4) {
                System.out.printf("UNKNOWN(opcode=%d, arg0=%d, arg1=%d)\n", Byte.valueOf(b10), Long.valueOf(this.buffer0[length]), Integer.valueOf(this.buffer1[length]));
            } else {
                System.out.printf("FREE_OPERATION(address=%x, size=%d)\n", Long.valueOf(jArr[length]), Integer.valueOf(this.buffer1[length]));
            }
        }
    }

    public void recordFree(long j10, int i10) {
        if (enabled()) {
            this.timer++;
            addToQueue((byte) 4, j10, i10);
        }
    }

    public void recordMalloc(long j10, int i10) {
        if (enabled()) {
            this.timer++;
            addToQueue((byte) 3, j10, i10);
        }
    }

    public void recordWrite(long j10, int i10) {
        if (enabled()) {
            this.timer++;
            addToQueue((byte) 2, j10, i10);
        }
    }

    public void setBufferSize(int i10) {
        int bufferEntries = getBufferEntries();
        if (bufferEntries == getBufferEntriesFor(i10)) {
            return;
        }
        long[] jArr = this.buffer0;
        int[] iArr = this.buffer1;
        byte[] bArr = this.operation;
        allocateBuffers(i10);
        long[] jArr2 = this.buffer0;
        if (jArr2 == null) {
            this.currentEntries = 0;
            this.insertionPosition = 0;
            this.operationStack.clear();
            return;
        }
        int min = Math.min(jArr2.length, this.currentEntries);
        if (bufferEntries > 0) {
            int i11 = this.insertionPosition;
            int i12 = ((i11 + bufferEntries) - min) % bufferEntries;
            if (i12 >= i11) {
                int i13 = bufferEntries - i12;
                System.arraycopy(jArr, i12, this.buffer0, 0, i13);
                System.arraycopy(iArr, i12, this.buffer1, 0, i13);
                System.arraycopy(bArr, i12, this.operation, 0, i13);
                System.arraycopy(jArr, 0, this.buffer0, i13, this.insertionPosition);
                System.arraycopy(iArr, 0, this.buffer1, i13, this.insertionPosition);
                System.arraycopy(bArr, 0, this.operation, i13, this.insertionPosition);
            } else {
                int i14 = i11 - i12;
                System.arraycopy(jArr, i12, this.buffer0, 0, i14);
                System.arraycopy(iArr, i12, this.buffer1, 0, i14);
                System.arraycopy(bArr, i12, this.operation, 0, i14);
            }
        }
        this.currentEntries = min;
        this.insertionPosition = min % this.buffer0.length;
    }

    public void start(Tag tag) {
        if (enabled()) {
            this.operationStack.add(tag);
            addToQueue((byte) 0, 0L, tag.opNum);
        }
    }
}
