package com.android.dx.command.dump;

import com.android.dx.cf.code.BasicBlocker;
import com.android.dx.cf.code.ByteBlock;
import com.android.dx.cf.code.ByteBlockList;
import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.CodeObserver;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.ClassFile;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstType;
import com.android.dx.ssa.Optimizer;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class BlockDumper extends BaseDumper {
    protected DirectClassFile classFile;
    private boolean first;
    private boolean optimize;
    private boolean rop;
    protected boolean suppressDump;

    public BlockDumper(byte[] bArr, PrintStream printStream, String str, boolean z10, Args args) {
        super(bArr, printStream, str, args);
        this.rop = z10;
        this.classFile = null;
        this.suppressDump = true;
        this.first = true;
        this.optimize = args.optimize;
    }

    public static void dump(byte[] bArr, PrintStream printStream, String str, boolean z10, Args args) {
        new BlockDumper(bArr, printStream, str, z10, args).dump();
    }

    private void regularDump(ConcreteMethod concreteMethod) {
        BytecodeArray code = concreteMethod.getCode();
        ByteArray bytes = code.getBytes();
        ByteBlockList identifyBlocks = BasicBlocker.identifyBlocks(concreteMethod);
        int size = identifyBlocks.size();
        CodeObserver codeObserver = new CodeObserver(bytes, this);
        setAt(bytes, 0);
        this.suppressDump = false;
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            ByteBlock byteBlock = identifyBlocks.get(i10);
            int start = byteBlock.getStart();
            int end = byteBlock.getEnd();
            if (i11 < start) {
                parsed(bytes, i11, start - i11, "dead code " + Hex.u2(i11) + ClasspathEntry.DOT_DOT + Hex.u2(start));
            }
            parsed(bytes, start, 0, "block " + Hex.u2(byteBlock.getLabel()) + ": " + Hex.u2(start) + ClasspathEntry.DOT_DOT + Hex.u2(end));
            changeIndent(1);
            while (start < end) {
                int parseInstruction = code.parseInstruction(start, codeObserver);
                codeObserver.setPreviousOffset(start);
                start += parseInstruction;
            }
            IntList successors = byteBlock.getSuccessors();
            int size2 = successors.size();
            if (size2 == 0) {
                parsed(bytes, end, 0, "returns");
            } else {
                for (int i12 = 0; i12 < size2; i12++) {
                    parsed(bytes, end, 0, "next " + Hex.u2(successors.get(i12)));
                }
            }
            ByteCatchList catches = byteBlock.getCatches();
            int size3 = catches.size();
            for (int i13 = 0; i13 < size3; i13++) {
                ByteCatchList.Item item = catches.get(i13);
                CstType exceptionClass = item.getExceptionClass();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("catch ");
                sb2.append(exceptionClass == CstType.OBJECT ? "<any>" : exceptionClass.toHuman());
                sb2.append(" -> ");
                sb2.append(Hex.u2(item.getHandlerPc()));
                parsed(bytes, end, 0, sb2.toString());
            }
            changeIndent(-1);
            i10++;
            i11 = end;
        }
        int size4 = bytes.size();
        if (i11 < size4) {
            parsed(bytes, i11, size4 - i11, "dead code " + Hex.u2(i11) + ClasspathEntry.DOT_DOT + Hex.u2(size4));
        }
        this.suppressDump = true;
    }

    private void ropDump(ConcreteMethod concreteMethod) {
        DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
        ByteArray bytes = concreteMethod.getCode().getBytes();
        RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
        StringBuffer stringBuffer = new StringBuffer(2000);
        if (this.optimize) {
            boolean isStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
            convert = Optimizer.optimize(convert, BaseDumper.computeParamWidth(concreteMethod, isStatic), isStatic, true, dexTranslationAdvice);
        }
        BasicBlockList blocks = convert.getBlocks();
        int[] labelsInOrder = blocks.getLabelsInOrder();
        stringBuffer.append("first " + Hex.u2(convert.getFirstLabel()) + "\n");
        for (int i10 : labelsInOrder) {
            BasicBlock basicBlock = blocks.get(blocks.indexOfLabel(i10));
            stringBuffer.append("block ");
            stringBuffer.append(Hex.u2(i10));
            stringBuffer.append("\n");
            IntList labelToPredecessors = convert.labelToPredecessors(i10);
            int size = labelToPredecessors.size();
            for (int i11 = 0; i11 < size; i11++) {
                stringBuffer.append("  pred ");
                stringBuffer.append(Hex.u2(labelToPredecessors.get(i11)));
                stringBuffer.append("\n");
            }
            InsnList insns = basicBlock.getInsns();
            int size2 = insns.size();
            for (int i12 = 0; i12 < size2; i12++) {
                insns.get(i12);
                stringBuffer.append(GlideException.a.f59088e);
                stringBuffer.append(insns.get(i12).toHuman());
                stringBuffer.append("\n");
            }
            IntList successors = basicBlock.getSuccessors();
            int size3 = successors.size();
            if (size3 == 0) {
                stringBuffer.append("  returns\n");
            } else {
                int primarySuccessor = basicBlock.getPrimarySuccessor();
                for (int i13 = 0; i13 < size3; i13++) {
                    int i14 = successors.get(i13);
                    stringBuffer.append("  next ");
                    stringBuffer.append(Hex.u2(i14));
                    if (size3 != 1 && i14 == primarySuccessor) {
                        stringBuffer.append(" *");
                    }
                    stringBuffer.append("\n");
                }
            }
        }
        this.suppressDump = false;
        setAt(bytes, 0);
        parsed(bytes, 0, bytes.size(), stringBuffer.toString());
        this.suppressDump = true;
    }

    @Override
    public void changeIndent(int i10) {
        if (this.suppressDump) {
            return;
        }
        super.changeIndent(i10);
    }

    @Override
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
        if ((member instanceof Method) && shouldDumpMethod(str) && (member.getAccessFlags() & 1280) == 0) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, (ClassFile) this.classFile, true, true);
            if (this.rop) {
                ropDump(concreteMethod);
            } else {
                regularDump(concreteMethod);
            }
        }
    }

    @Override
    public void parsed(ByteArray byteArray, int i10, int i11, String str) {
        if (this.suppressDump) {
            return;
        }
        super.parsed(byteArray, i10, i11, str);
    }

    public boolean shouldDumpMethod(String str) {
        String str2 = this.args.method;
        return str2 == null || str2.equals(str);
    }

    @Override
    public void startParsingMember(ByteArray byteArray, int i10, String str, String str2) {
        if (str2.indexOf(40) >= 0 && shouldDumpMethod(str)) {
            setAt(byteArray, i10);
            this.suppressDump = false;
            if (this.first) {
                this.first = false;
            } else {
                parsed(byteArray, i10, 0, "\n");
            }
            parsed(byteArray, i10, 0, "method " + str + " " + str2);
            this.suppressDump = true;
        }
    }

    public void dump() {
        ByteArray byteArray = new ByteArray(getBytes());
        DirectClassFile directClassFile = new DirectClassFile(byteArray, getFilePath(), getStrictParse());
        this.classFile = directClassFile;
        StdAttributeFactory stdAttributeFactory = StdAttributeFactory.THE_ONE;
        directClassFile.setAttributeFactory(stdAttributeFactory);
        this.classFile.getMagic();
        DirectClassFile directClassFile2 = new DirectClassFile(byteArray, getFilePath(), getStrictParse());
        directClassFile2.setAttributeFactory(stdAttributeFactory);
        directClassFile2.setObserver(this);
        directClassFile2.getMagic();
    }
}
