package org.luaj.vm2;

import org.luaj.vm2.lib.MathLib;

public class LuaDouble extends LuaNumber {
    public static final String JSTR_NAN = "nan";
    public static final String JSTR_NEGINF = "-inf";
    public static final String JSTR_POSINF = "inf";

    final double f102761v;
    public static final LuaDouble NAN = new LuaDouble(Double.NaN);
    public static final LuaDouble POSINF = new LuaDouble(Double.POSITIVE_INFINITY);
    public static final LuaDouble NEGINF = new LuaDouble(Double.NEGATIVE_INFINITY);

    private LuaDouble(double d10) {
        this.f102761v = d10;
    }

    public static LuaValue ddiv(double d10, double d11) {
        return d11 != 0.0d ? valueOf(d10 / d11) : d10 > 0.0d ? POSINF : d10 == 0.0d ? NAN : NEGINF;
    }

    public static double ddiv_d(double d10, double d11) {
        if (d11 != 0.0d) {
            return d10 / d11;
        }
        if (d10 > 0.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return d10 == 0.0d ? Double.NaN : Double.NEGATIVE_INFINITY;
    }

    public static LuaValue dmod(double d10, double d11) {
        return d11 != 0.0d ? valueOf(d10 - (d11 * Math.floor(d10 / d11))) : NAN;
    }

    public static double dmod_d(double d10, double d11) {
        if (d11 != 0.0d) {
            return d10 - (d11 * Math.floor(d10 / d11));
        }
        return Double.NaN;
    }

    public static LuaNumber valueOf(double d10) {
        int i10 = (int) d10;
        return d10 == ((double) i10) ? LuaInteger.valueOf(i10) : new LuaDouble(d10);
    }

    @Override
    public LuaValue add(double d10) {
        return valueOf(d10 + this.f102761v);
    }

    @Override
    public double checkdouble() {
        return this.f102761v;
    }

    @Override
    public int checkint() {
        return (int) this.f102761v;
    }

    @Override
    public LuaInteger checkinteger() {
        return LuaInteger.valueOf((int) this.f102761v);
    }

    @Override
    public String checkjstring() {
        return tojstring();
    }

    @Override
    public long checklong() {
        return (long) this.f102761v;
    }

    @Override
    public LuaNumber checknumber() {
        return this;
    }

    @Override
    public LuaString checkstring() {
        return LuaString.valueOf(tojstring());
    }

    @Override
    public LuaValue div(double d10) {
        return ddiv(this.f102761v, d10);
    }

    @Override
    public LuaValue divInto(double d10) {
        return ddiv(d10, this.f102761v);
    }

    @Override
    public LuaValue eq(LuaValue luaValue) {
        return luaValue.raweq(this.f102761v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this.f102761v);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof LuaDouble) && ((LuaDouble) obj).f102761v == this.f102761v;
    }

    @Override
    public LuaValue gt(double d10) {
        return this.f102761v > d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(double d10) {
        return this.f102761v > d10;
    }

    @Override
    public LuaValue gteq(double d10) {
        return this.f102761v >= d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(double d10) {
        return this.f102761v >= d10;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f102761v + 1.0d);
        return ((int) (doubleToLongBits >> 32)) + ((int) doubleToLongBits);
    }

    @Override
    public boolean islong() {
        double d10 = this.f102761v;
        return d10 == ((double) ((long) d10));
    }

    @Override
    public boolean isnumber() {
        return true;
    }

    @Override
    public boolean isstring() {
        return true;
    }

    @Override
    public boolean isvalidkey() {
        return !Double.isNaN(this.f102761v);
    }

    @Override
    public LuaValue lt(double d10) {
        return this.f102761v < d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(double d10) {
        return this.f102761v < d10;
    }

    @Override
    public LuaValue lteq(double d10) {
        return this.f102761v <= d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(double d10) {
        return this.f102761v <= d10;
    }

    @Override
    public LuaValue mod(double d10) {
        return dmod(this.f102761v, d10);
    }

    @Override
    public LuaValue modFrom(double d10) {
        return dmod(d10, this.f102761v);
    }

    @Override
    public LuaValue mul(double d10) {
        return valueOf(d10 * this.f102761v);
    }

    @Override
    public LuaValue neg() {
        return valueOf(-this.f102761v);
    }

    @Override
    public double optdouble(double d10) {
        return this.f102761v;
    }

    @Override
    public int optint(int i10) {
        return (int) this.f102761v;
    }

    @Override
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return LuaInteger.valueOf((int) this.f102761v);
    }

    @Override
    public String optjstring(String str) {
        return tojstring();
    }

    @Override
    public long optlong(long j10) {
        return (long) this.f102761v;
    }

    @Override
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(tojstring());
    }

    @Override
    public LuaValue pow(double d10) {
        return MathLib.dpow(this.f102761v, d10);
    }

    @Override
    public LuaValue powWith(double d10) {
        return MathLib.dpow(d10, this.f102761v);
    }

    @Override
    public boolean raweq(double d10) {
        return this.f102761v == d10;
    }

    @Override
    public int strcmp(LuaString luaString) {
        typerror("attempt to compare number with string");
        return 0;
    }

    @Override
    public LuaString strvalue() {
        return LuaString.valueOf(tojstring());
    }

    @Override
    public LuaValue sub(double d10) {
        return valueOf(this.f102761v - d10);
    }

    @Override
    public LuaValue subFrom(double d10) {
        return valueOf(d10 - this.f102761v);
    }

    @Override
    public byte tobyte() {
        return (byte) this.f102761v;
    }

    @Override
    public char tochar() {
        return (char) this.f102761v;
    }

    @Override
    public double todouble() {
        return this.f102761v;
    }

    @Override
    public float tofloat() {
        return (float) this.f102761v;
    }

    @Override
    public int toint() {
        return (int) this.f102761v;
    }

    @Override
    public String tojstring() {
        double d10 = this.f102761v;
        long j10 = (long) d10;
        return ((double) j10) == d10 ? Long.toString(j10) : Double.isNaN(d10) ? JSTR_NAN : Double.isInfinite(this.f102761v) ? this.f102761v < 0.0d ? JSTR_NEGINF : JSTR_POSINF : Float.toString((float) this.f102761v);
    }

    @Override
    public long tolong() {
        return (long) this.f102761v;
    }

    @Override
    public LuaValue tonumber() {
        return this;
    }

    @Override
    public short toshort() {
        return (short) this.f102761v;
    }

    @Override
    public LuaValue tostring() {
        return LuaString.valueOf(tojstring());
    }

    @Override
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.f102761v);
    }

    @Override
    public LuaValue div(int i10) {
        return ddiv(this.f102761v, i10);
    }

    @Override
    public LuaValue gt(int i10) {
        return this.f102761v > ((double) i10) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(int i10) {
        return this.f102761v > ((double) i10);
    }

    @Override
    public LuaValue gteq(int i10) {
        return this.f102761v >= ((double) i10) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(int i10) {
        return this.f102761v >= ((double) i10);
    }

    @Override
    public LuaValue lt(int i10) {
        return this.f102761v < ((double) i10) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(int i10) {
        return this.f102761v < ((double) i10);
    }

    @Override
    public LuaValue lteq(int i10) {
        return this.f102761v <= ((double) i10) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(int i10) {
        return this.f102761v <= ((double) i10);
    }

    @Override
    public LuaValue mod(int i10) {
        return dmod(this.f102761v, i10);
    }

    @Override
    public LuaValue mul(int i10) {
        return valueOf(i10 * this.f102761v);
    }

    @Override
    public LuaValue pow(int i10) {
        return MathLib.dpow(this.f102761v, i10);
    }

    @Override
    public LuaValue powWith(int i10) {
        return MathLib.dpow(i10, this.f102761v);
    }

    @Override
    public boolean raweq(int i10) {
        return this.f102761v == ((double) i10);
    }

    @Override
    public LuaValue sub(int i10) {
        return valueOf(this.f102761v - i10);
    }

    @Override
    public LuaValue div(LuaValue luaValue) {
        return luaValue.divInto(this.f102761v);
    }

    @Override
    public LuaValue gt(LuaValue luaValue) {
        return luaValue.lt_b(this.f102761v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(LuaValue luaValue) {
        return luaValue.lt_b(this.f102761v);
    }

    @Override
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.lteq_b(this.f102761v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.lteq_b(this.f102761v);
    }

    @Override
    public LuaValue lt(LuaValue luaValue) {
        return luaValue.gt_b(this.f102761v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(LuaValue luaValue) {
        return luaValue.gt_b(this.f102761v);
    }

    @Override
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue.gteq_b(this.f102761v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue.gteq_b(this.f102761v);
    }

    @Override
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.f102761v);
    }

    @Override
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.f102761v);
    }

    @Override
    public LuaValue pow(LuaValue luaValue) {
        return luaValue.powWith(this.f102761v);
    }

    @Override
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this.f102761v);
    }

    @Override
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.f102761v);
    }
}
