package com.android.dx.ssa;

import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.ssa.back.LivenessAnalyzer;
import com.android.dx.ssa.back.SsaToRop;
import java.util.EnumSet;

public class Optimizer {
    private static TranslationAdvice advice = null;
    private static boolean preserveLocals = true;

    public enum OptionalStep {
        MOVE_PARAM_COMBINER,
        SCCP,
        LITERAL_UPGRADE,
        CONST_COLLECTOR,
        ESCAPE_ANALYSIS
    }

    public static SsaMethod debugDeadCodeRemover(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice) {
        preserveLocals = z11;
        advice = translationAdvice;
        SsaMethod convertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i10, z10);
        DeadCodeRemover.process(convertToSsaMethod);
        return convertToSsaMethod;
    }

    public static SsaMethod debugEdgeSplit(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice) {
        preserveLocals = z11;
        advice = translationAdvice;
        return SsaConverter.testEdgeSplit(ropMethod, i10, z10);
    }

    public static SsaMethod debugNoRegisterAllocation(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice, EnumSet<OptionalStep> enumSet) {
        preserveLocals = z11;
        advice = translationAdvice;
        SsaMethod convertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i10, z10);
        runSsaFormSteps(convertToSsaMethod, enumSet);
        LivenessAnalyzer.constructInterferenceGraph(convertToSsaMethod);
        return convertToSsaMethod;
    }

    public static SsaMethod debugPhiPlacement(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice) {
        preserveLocals = z11;
        advice = translationAdvice;
        return SsaConverter.testPhiPlacement(ropMethod, i10, z10);
    }

    public static SsaMethod debugRenaming(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice) {
        preserveLocals = z11;
        advice = translationAdvice;
        return SsaConverter.convertToSsaMethod(ropMethod, i10, z10);
    }

    public static TranslationAdvice getAdvice() {
        return advice;
    }

    public static boolean getPreserveLocals() {
        return preserveLocals;
    }

    public static RopMethod optimize(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice) {
        return optimize(ropMethod, i10, z10, z11, translationAdvice, EnumSet.allOf(OptionalStep.class));
    }

    private static RopMethod optimizeMinimizeRegisters(RopMethod ropMethod, int i10, boolean z10, EnumSet<OptionalStep> enumSet) {
        SsaMethod convertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i10, z10);
        EnumSet<OptionalStep> m1756clone = enumSet.m1756clone();
        m1756clone.remove(OptionalStep.CONST_COLLECTOR);
        runSsaFormSteps(convertToSsaMethod, m1756clone);
        return SsaToRop.convertToRopMethod(convertToSsaMethod, true);
    }

    private static void runSsaFormSteps(SsaMethod ssaMethod, EnumSet<OptionalStep> enumSet) {
        boolean z10;
        if (enumSet.contains(OptionalStep.MOVE_PARAM_COMBINER)) {
            MoveParamCombiner.process(ssaMethod);
        }
        boolean z11 = false;
        if (enumSet.contains(OptionalStep.SCCP)) {
            SCCP.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z10 = false;
        } else {
            z10 = true;
        }
        if (enumSet.contains(OptionalStep.LITERAL_UPGRADE)) {
            LiteralOpUpgrader.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z10 = false;
        }
        OptionalStep optionalStep = OptionalStep.ESCAPE_ANALYSIS;
        enumSet.remove(optionalStep);
        if (enumSet.contains(optionalStep)) {
            EscapeAnalysis.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
            z10 = false;
        }
        if (enumSet.contains(OptionalStep.CONST_COLLECTOR)) {
            ConstCollector.process(ssaMethod);
            DeadCodeRemover.process(ssaMethod);
        } else {
            z11 = z10;
        }
        if (z11) {
            DeadCodeRemover.process(ssaMethod);
        }
        PhiTypeResolver.process(ssaMethod);
    }

    public static RopMethod optimize(RopMethod ropMethod, int i10, boolean z10, boolean z11, TranslationAdvice translationAdvice, EnumSet<OptionalStep> enumSet) {
        preserveLocals = z11;
        advice = translationAdvice;
        SsaMethod convertToSsaMethod = SsaConverter.convertToSsaMethod(ropMethod, i10, z10);
        runSsaFormSteps(convertToSsaMethod, enumSet);
        RopMethod convertToRopMethod = SsaToRop.convertToRopMethod(convertToSsaMethod, false);
        return convertToRopMethod.getBlocks().getRegCount() > advice.getMaxOptimalRegisterCount() ? optimizeMinimizeRegisters(ropMethod, i10, z10, enumSet) : convertToRopMethod;
    }
}
