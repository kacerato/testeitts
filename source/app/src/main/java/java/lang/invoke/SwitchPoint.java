package java.lang.invoke;

public class SwitchPoint {
    private static final MethodHandle K_true = MethodHandles.constant(Boolean.TYPE, true);
    private static final MethodHandle K_false = MethodHandles.constant(Boolean.TYPE, false);
    private final MutableCallSite mcs = new MutableCallSite(K_true);
    private final MethodHandle mcsInvoker = this.mcs.dynamicInvoker();

    public boolean hasBeenInvalidated() {
        return this.mcs.getTarget() != K_true;
    }

    public MethodHandle guardWithTest(MethodHandle target, MethodHandle fallback) {
        if (this.mcs.getTarget() == K_false) {
            return fallback;
        }
        return MethodHandles.guardWithTest(this.mcsInvoker, target, fallback);
    }

    public static void invalidateAll(SwitchPoint[] switchPoints) {
        SwitchPoint spt;
        if (switchPoints.length == 0) {
            return;
        }
        MutableCallSite[] sites = new MutableCallSite[switchPoints.length];
        for (int i10 = 0; i10 < switchPoints.length && (spt = switchPoints[i10]) != null; i10++) {
            sites[i10] = spt.mcs;
            spt.mcs.setTarget(K_false);
        }
        MutableCallSite.syncAll(sites);
    }
}
