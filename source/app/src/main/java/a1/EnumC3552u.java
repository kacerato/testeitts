package a1;

public enum EnumC3552u implements com.google.android.gms.fido.fido2.api.common.a {
    RS256(-257),
    RS384(-258),
    RS512(-259),
    LEGACY_RS1(-262),
    PS256(-37),
    PS384(-38),
    PS512(-39),
    RS1(-65535);

    private final int zzb;

    EnumC3552u(int i10) {
        this.zzb = i10;
    }

    @Override
    public int a() {
        return this.zzb;
    }
}
