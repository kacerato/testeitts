package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.util.FixedSizeList;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class LocalList extends FixedSizeList {
    private static final boolean DEBUG = false;
    public static final LocalList EMPTY = new LocalList(0);

    public enum Disposition {
        START,
        END_SIMPLY,
        END_REPLACED,
        END_MOVED,
        END_CLOBBERED_BY_PREV,
        END_CLOBBERED_BY_NEXT
    }

    public static class Entry implements Comparable<Entry> {
        private final int address;
        private final Disposition disposition;
        private final RegisterSpec spec;
        private final CstType type;

        public Entry(int i10, Disposition disposition, RegisterSpec registerSpec) {
            if (i10 < 0) {
                throw new IllegalArgumentException("address < 0");
            }
            if (disposition == null) {
                throw new NullPointerException("disposition == null");
            }
            try {
                if (registerSpec.getLocalItem() == null) {
                    throw new NullPointerException("spec.getLocalItem() == null");
                }
                this.address = i10;
                this.disposition = disposition;
                this.spec = registerSpec;
                this.type = CstType.intern(registerSpec.getType());
            } catch (NullPointerException unused) {
                throw new NullPointerException("spec == null");
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        public int getAddress() {
            return this.address;
        }

        public Disposition getDisposition() {
            return this.disposition;
        }

        public CstString getName() {
            return this.spec.getLocalItem().getName();
        }

        public int getRegister() {
            return this.spec.getReg();
        }

        public RegisterSpec getRegisterSpec() {
            return this.spec;
        }

        public CstString getSignature() {
            return this.spec.getLocalItem().getSignature();
        }

        public CstType getType() {
            return this.type;
        }

        public boolean isStart() {
            return this.disposition == Disposition.START;
        }

        public boolean matches(RegisterSpec registerSpec) {
            return this.spec.equalsUsingSimpleType(registerSpec);
        }

        public String toString() {
            return Integer.toHexString(this.address) + " " + ((Object) this.disposition) + " " + ((Object) this.spec);
        }

        public Entry withDisposition(Disposition disposition) {
            return disposition == this.disposition ? this : new Entry(this.address, disposition, this.spec);
        }

        @Override
        public int compareTo(Entry entry) {
            int i10 = this.address;
            int i11 = entry.address;
            if (i10 < i11) {
                return -1;
            }
            if (i10 > i11) {
                return 1;
            }
            boolean isStart = isStart();
            if (isStart != entry.isStart()) {
                return isStart ? 1 : -1;
            }
            return this.spec.compareTo(entry.spec);
        }

        public boolean matches(Entry entry) {
            return matches(entry.spec);
        }
    }

    public static class MakeState {
        private final ArrayList<Entry> result;
        private int nullResultCount = 0;
        private RegisterSpecSet regs = null;
        private int[] endIndices = null;
        private int lastAddress = 0;

        public MakeState(int i10) {
            this.result = new ArrayList<>(i10);
        }

        private void aboutToProcess(int i10, int i11) {
            int[] iArr = this.endIndices;
            boolean z10 = iArr == null;
            int i12 = this.lastAddress;
            if (i10 != i12 || z10) {
                if (i10 < i12) {
                    throw new RuntimeException("shouldn't happen");
                }
                if (z10 || i11 >= iArr.length) {
                    int i13 = i11 + 1;
                    RegisterSpecSet registerSpecSet = new RegisterSpecSet(i13);
                    int[] iArr2 = new int[i13];
                    Arrays.fill(iArr2, -1);
                    if (!z10) {
                        registerSpecSet.putAll(this.regs);
                        int[] iArr3 = this.endIndices;
                        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                    }
                    this.regs = registerSpecSet;
                    this.endIndices = iArr2;
                }
            }
        }

        private void add(int i10, Disposition disposition, RegisterSpec registerSpec) {
            int reg = registerSpec.getReg();
            this.result.add(new Entry(i10, disposition, registerSpec));
            if (disposition == Disposition.START) {
                this.regs.put(registerSpec);
                this.endIndices[reg] = -1;
            } else {
                this.regs.remove(registerSpec);
                this.endIndices[reg] = this.result.size() - 1;
            }
        }

        private void addOrUpdateEnd(int i10, Disposition disposition, RegisterSpec registerSpec) {
            if (disposition == Disposition.START) {
                throw new RuntimeException("shouldn't happen");
            }
            int i11 = this.endIndices[registerSpec.getReg()];
            if (i11 >= 0) {
                Entry entry = this.result.get(i11);
                if (entry.getAddress() == i10 && entry.getRegisterSpec().equals(registerSpec)) {
                    this.result.set(i11, entry.withDisposition(disposition));
                    this.regs.remove(registerSpec);
                    return;
                }
            }
            endLocal(i10, registerSpec, disposition);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
        
            r5.regs.remove(r7);
            r4 = null;
            r5.result.set(r0, null);
            r5.nullResultCount++;
            r7 = r7.getReg();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        
            r0 = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        
            if (r0 < 0) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            r4 = r5.result.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        
            if (r4 != null) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        
            if (r4.getRegisterSpec().getReg() != r7) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        
            if (r2 == false) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
        
            r5.endIndices[r7] = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        
            if (r4.getAddress() != r6) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        
            r5.result.set(r0, r4.withDisposition(com.android.dx.dex.code.LocalList.Disposition.END_SIMPLY));
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x006d, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean checkForEmptyRange(int i10, RegisterSpec registerSpec) {
            int size = this.result.size() - 1;
            while (true) {
                boolean z10 = false;
                if (size < 0) {
                    break;
                }
                Entry entry = this.result.get(size);
                if (entry != null) {
                    if (entry.getAddress() != i10) {
                        return false;
                    }
                    if (entry.matches(registerSpec)) {
                        break;
                    }
                }
                size--;
            }
        }

        private static RegisterSpec filterSpec(RegisterSpec registerSpec) {
            return (registerSpec == null || registerSpec.getType() != Type.KNOWN_NULL) ? registerSpec : registerSpec.withType(Type.OBJECT);
        }

        public void endLocal(int i10, RegisterSpec registerSpec) {
            endLocal(i10, registerSpec, Disposition.END_SIMPLY);
        }

        public LocalList finish() {
            aboutToProcess(Integer.MAX_VALUE, 0);
            int size = this.result.size();
            int i10 = size - this.nullResultCount;
            if (i10 == 0) {
                return LocalList.EMPTY;
            }
            Entry[] entryArr = new Entry[i10];
            if (size == i10) {
                this.result.toArray(entryArr);
            } else {
                Iterator<Entry> it = this.result.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    Entry next = it.next();
                    if (next != null) {
                        entryArr[i11] = next;
                        i11++;
                    }
                }
            }
            Arrays.sort(entryArr);
            LocalList localList = new LocalList(i10);
            for (int i12 = 0; i12 < i10; i12++) {
                localList.set(i12, entryArr[i12]);
            }
            localList.setImmutable();
            return localList;
        }

        public void snapshot(int i10, RegisterSpecSet registerSpecSet) {
            int maxSize = registerSpecSet.getMaxSize();
            aboutToProcess(i10, maxSize - 1);
            for (int i11 = 0; i11 < maxSize; i11++) {
                RegisterSpec registerSpec = this.regs.get(i11);
                RegisterSpec filterSpec = filterSpec(registerSpecSet.get(i11));
                if (registerSpec == null) {
                    if (filterSpec != null) {
                        startLocal(i10, filterSpec);
                    }
                } else if (filterSpec == null) {
                    endLocal(i10, registerSpec);
                } else if (!filterSpec.equalsUsingSimpleType(registerSpec)) {
                    endLocal(i10, registerSpec);
                    startLocal(i10, filterSpec);
                }
            }
        }

        public void startLocal(int i10, RegisterSpec registerSpec) {
            RegisterSpec registerSpec2;
            RegisterSpec registerSpec3;
            int reg = registerSpec.getReg();
            RegisterSpec filterSpec = filterSpec(registerSpec);
            aboutToProcess(i10, reg);
            RegisterSpec registerSpec4 = this.regs.get(reg);
            if (filterSpec.equalsUsingSimpleType(registerSpec4)) {
                return;
            }
            RegisterSpec findMatchingLocal = this.regs.findMatchingLocal(filterSpec);
            if (findMatchingLocal != null) {
                addOrUpdateEnd(i10, Disposition.END_MOVED, findMatchingLocal);
            }
            int i11 = this.endIndices[reg];
            if (registerSpec4 != null) {
                add(i10, Disposition.END_REPLACED, registerSpec4);
            } else if (i11 >= 0) {
                Entry entry = this.result.get(i11);
                if (entry.getAddress() == i10) {
                    if (entry.matches(filterSpec)) {
                        this.result.set(i11, null);
                        this.nullResultCount++;
                        this.regs.put(filterSpec);
                        this.endIndices[reg] = -1;
                        return;
                    }
                    this.result.set(i11, entry.withDisposition(Disposition.END_REPLACED));
                }
            }
            if (reg > 0 && (registerSpec3 = this.regs.get(reg - 1)) != null && registerSpec3.isCategory2()) {
                addOrUpdateEnd(i10, Disposition.END_CLOBBERED_BY_NEXT, registerSpec3);
            }
            if (filterSpec.isCategory2() && (registerSpec2 = this.regs.get(reg + 1)) != null) {
                addOrUpdateEnd(i10, Disposition.END_CLOBBERED_BY_PREV, registerSpec2);
            }
            add(i10, Disposition.START, filterSpec);
        }

        public void endLocal(int i10, RegisterSpec registerSpec, Disposition disposition) {
            int reg = registerSpec.getReg();
            RegisterSpec filterSpec = filterSpec(registerSpec);
            aboutToProcess(i10, reg);
            if (this.endIndices[reg] < 0 && !checkForEmptyRange(i10, filterSpec)) {
                add(i10, disposition, filterSpec);
            }
        }
    }

    public LocalList(int i10) {
        super(i10);
    }

    private static void debugVerify(LocalList localList) {
        try {
            debugVerify0(localList);
        } catch (RuntimeException e10) {
            int size = localList.size();
            for (int i10 = 0; i10 < size; i10++) {
                System.err.println(localList.get(i10));
            }
            throw e10;
        }
    }

    private static void debugVerify0(LocalList localList) {
        int size = localList.size();
        Entry[] entryArr = new Entry[65536];
        for (int i10 = 0; i10 < size; i10++) {
            Entry entry = localList.get(i10);
            int register = entry.getRegister();
            if (entry.isStart()) {
                Entry entry2 = entryArr[register];
                if (entry2 != null && entry.matches(entry2)) {
                    throw new RuntimeException("redundant start at " + Integer.toHexString(entry.getAddress()) + ": got " + ((Object) entry) + "; had " + ((Object) entry2));
                }
                entryArr[register] = entry;
            } else {
                if (entryArr[register] == null) {
                    throw new RuntimeException("redundant end at " + Integer.toHexString(entry.getAddress()));
                }
                int address = entry.getAddress();
                boolean z10 = false;
                for (int i11 = i10 + 1; i11 < size; i11++) {
                    Entry entry3 = localList.get(i11);
                    if (entry3.getAddress() != address) {
                        break;
                    }
                    if (entry3.getRegisterSpec().getReg() == register) {
                        if (!entry3.isStart()) {
                            throw new RuntimeException("redundant end at " + Integer.toHexString(address));
                        }
                        if (entry.getDisposition() != Disposition.END_REPLACED) {
                            throw new RuntimeException("improperly marked end at " + Integer.toHexString(address));
                        }
                        z10 = true;
                    }
                }
                if (!z10 && entry.getDisposition() == Disposition.END_REPLACED) {
                    throw new RuntimeException("improper end replacement claim at " + Integer.toHexString(address));
                }
                entryArr[register] = null;
            }
        }
    }

    public static LocalList make(DalvInsnList dalvInsnList) {
        int size = dalvInsnList.size();
        MakeState makeState = new MakeState(size);
        for (int i10 = 0; i10 < size; i10++) {
            DalvInsn dalvInsn = dalvInsnList.get(i10);
            if (dalvInsn instanceof LocalSnapshot) {
                makeState.snapshot(dalvInsn.getAddress(), ((LocalSnapshot) dalvInsn).getLocals());
            } else if (dalvInsn instanceof LocalStart) {
                makeState.startLocal(dalvInsn.getAddress(), ((LocalStart) dalvInsn).getLocal());
            }
        }
        return makeState.finish();
    }

    public void debugPrint(PrintStream printStream, String str) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            printStream.print(str);
            printStream.println(get(i10));
        }
    }

    public Entry get(int i10) {
        return (Entry) get0(i10);
    }

    public void set(int i10, Entry entry) {
        set0(i10, entry);
    }
}
