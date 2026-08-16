package com.android.dx.dex.cf;

import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.ssa.Optimizer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.EnumSet;
import java.util.HashSet;

public class OptimizerOptions {
    private HashSet<String> dontOptimizeList;
    private HashSet<String> optimizeList;
    private boolean optimizeListsLoaded;

    private static HashSet<String> loadStringsFromFile(String str) {
        HashSet<String> hashSet = new HashSet<>();
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    fileReader.close();
                    return hashSet;
                }
                hashSet.add(readLine);
            }
        } catch (IOException e10) {
            throw new RuntimeException("Error with optimize list: " + str, e10);
        }
    }

    public void compareOptimizerStep(RopMethod ropMethod, int i10, boolean z10, CfOptions cfOptions, TranslationAdvice translationAdvice, RopMethod ropMethod2) {
        EnumSet allOf = EnumSet.allOf(Optimizer.OptionalStep.class);
        allOf.remove(Optimizer.OptionalStep.CONST_COLLECTOR);
        RopMethod optimize = Optimizer.optimize(ropMethod, i10, z10, cfOptions.localInfo, translationAdvice, allOf);
        System.err.printf("optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n", Integer.valueOf(ropMethod2.getBlocks().getRegCount()), Integer.valueOf(optimize.getBlocks().getRegCount()), Double.valueOf(((optimize.getBlocks().getRegCount() - ropMethod2.getBlocks().getRegCount()) / optimize.getBlocks().getRegCount()) * 100.0d), Integer.valueOf(ropMethod2.getBlocks().getEffectiveInstructionCount()), Integer.valueOf(optimize.getBlocks().getEffectiveInstructionCount()), Double.valueOf(((r10 - r9) / r10) * 100.0d));
    }

    public void loadOptimizeLists(String str, String str2) {
        if (this.optimizeListsLoaded) {
            return;
        }
        if (str != null && str2 != null) {
            throw new RuntimeException("optimize and don't optimize lists  are mutually exclusive.");
        }
        if (str != null) {
            this.optimizeList = loadStringsFromFile(str);
        }
        if (str2 != null) {
            this.dontOptimizeList = loadStringsFromFile(str2);
        }
        this.optimizeListsLoaded = true;
    }

    public boolean shouldOptimize(String str) {
        HashSet<String> hashSet = this.optimizeList;
        if (hashSet != null) {
            return hashSet.contains(str);
        }
        if (this.dontOptimizeList != null) {
            return !r0.contains(str);
        }
        return true;
    }
}
