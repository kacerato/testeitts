package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.ClassFile;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.Optimizer;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.io.PrintStream;
import org.apache.commons.math3.geometry.VectorFormat;

public class DotDumper implements ParseObserver {
    private final Args args;
    private final byte[] bytes;
    private DirectClassFile classFile;
    private final DexOptions dexOptions = new DexOptions();
    private final String filePath;
    private final boolean optimize;
    private final boolean strictParse;

    public DotDumper(byte[] bArr, String str, Args args) {
        this.bytes = bArr;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.optimize = args.optimize;
        this.args = args;
    }

    public static void dump(byte[] bArr, String str, Args args) {
        new DotDumper(bArr, str, args).run();
    }

    private void run() {
        ByteArray byteArray = new ByteArray(this.bytes);
        DirectClassFile directClassFile = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        this.classFile = directClassFile;
        StdAttributeFactory stdAttributeFactory = StdAttributeFactory.THE_ONE;
        directClassFile.setAttributeFactory(stdAttributeFactory);
        this.classFile.getMagic();
        DirectClassFile directClassFile2 = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        directClassFile2.setAttributeFactory(stdAttributeFactory);
        directClassFile2.setObserver(this);
        directClassFile2.getMagic();
    }

    @Override
    public void changeIndent(int i10) {
    }

    @Override
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
        if ((member instanceof Method) && shouldDumpMethod(str)) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, (ClassFile) this.classFile, true, true);
            DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
            RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
            if (this.optimize) {
                boolean isStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
                convert = Optimizer.optimize(convert, BaseDumper.computeParamWidth(concreteMethod, isStatic), isStatic, true, dexTranslationAdvice);
            }
            PrintStream printStream = System.out;
            printStream.println("digraph " + str + "{");
            printStream.println("\tfirst -> n" + Hex.u2(convert.getFirstLabel()) + ";");
            BasicBlockList blocks = convert.getBlocks();
            int size = blocks.size();
            int i11 = 0;
            int i12 = 0;
            while (i12 < size) {
                BasicBlock basicBlock = blocks.get(i12);
                int label = basicBlock.getLabel();
                IntList successors = basicBlock.getSuccessors();
                if (successors.size() == 0) {
                    System.out.println("\tn" + Hex.u2(label) + " -> returns;");
                } else if (successors.size() == 1) {
                    System.out.println("\tn" + Hex.u2(label) + " -> n" + Hex.u2(successors.get(i11)) + ";");
                } else {
                    System.out.print("\tn" + Hex.u2(label) + " -> {");
                    for (int i13 = i11; i13 < successors.size(); i13++) {
                        int i14 = successors.get(i13);
                        if (i14 != basicBlock.getPrimarySuccessor()) {
                            System.out.print(" n" + Hex.u2(i14) + " ");
                        }
                    }
                    PrintStream printStream2 = System.out;
                    printStream2.println("};");
                    printStream2.println("\tn" + Hex.u2(label) + " -> n" + Hex.u2(basicBlock.getPrimarySuccessor()) + " [label=\"primary\"];");
                }
                i12++;
                i11 = 0;
            }
            System.out.println(VectorFormat.DEFAULT_SUFFIX);
        }
    }

    @Override
    public void parsed(ByteArray byteArray, int i10, int i11, String str) {
    }

    public boolean shouldDumpMethod(String str) {
        String str2 = this.args.method;
        return str2 == null || str2.equals(str);
    }

    @Override
    public void startParsingMember(ByteArray byteArray, int i10, String str, String str2) {
    }
}
