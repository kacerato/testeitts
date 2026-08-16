package org.luaj.vm2;

import org.luaj.vm2.lib.MathLib;

public class LuaInteger extends LuaNumber {
    private static final LuaInteger[] intValues = new LuaInteger[512];

    public final int f102762v;

    static {
        for (int i10 = 0; i10 < 512; i10++) {
            intValues[i10] = new LuaInteger(i10 - 256);
        }
    }

    public LuaInteger(int i10) {
        this.f102762v = i10;
    }

    public static LuaInteger valueOf(int i10) {
        return (i10 > 255 || i10 < -256) ? new LuaInteger(i10) : intValues[i10 + 256];
    }

    @Override
    public LuaValue add(double d10) {
        return LuaDouble.valueOf(d10 + this.f102762v);
    }

    @Override
    public double checkdouble() {
        return this.f102762v;
    }

    @Override
    public int checkint() {
        return this.f102762v;
    }

    @Override
    public LuaInteger checkinteger() {
        return this;
    }

    @Override
    public String checkjstring() {
        return String.valueOf(this.f102762v);
    }

    @Override
    public long checklong() {
        return this.f102762v;
    }

    @Override
    public LuaString checkstring() {
        return LuaValue.valueOf(String.valueOf(this.f102762v));
    }

    @Override
    public LuaValue div(double d10) {
        return LuaDouble.ddiv(this.f102762v, d10);
    }

    @Override
    public LuaValue divInto(double d10) {
        return LuaDouble.ddiv(d10, this.f102762v);
    }

    @Override
    public LuaValue eq(LuaValue luaValue) {
        return luaValue.raweq(this.f102762v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this.f102762v);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof LuaInteger) && ((LuaInteger) obj).f102762v == this.f102762v;
    }

    @Override
    public LuaValue gt(double d10) {
        return ((double) this.f102762v) > d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(double d10) {
        return ((double) this.f102762v) > d10;
    }

    @Override
    public LuaValue gteq(double d10) {
        return ((double) this.f102762v) >= d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(double d10) {
        return ((double) this.f102762v) >= d10;
    }

    public int hashCode() {
        return this.f102762v;
    }

    @Override
    public boolean isint() {
        return true;
    }

    @Override
    public boolean isinttype() {
        return true;
    }

    @Override
    public boolean islong() {
        return true;
    }

    @Override
    public boolean isstring() {
        return true;
    }

    @Override
    public LuaValue lt(double d10) {
        return ((double) this.f102762v) < d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(double d10) {
        return ((double) this.f102762v) < d10;
    }

    @Override
    public LuaValue lteq(double d10) {
        return ((double) this.f102762v) <= d10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(double d10) {
        return ((double) this.f102762v) <= d10;
    }

    @Override
    public LuaValue mod(double d10) {
        return LuaDouble.dmod(this.f102762v, d10);
    }

    @Override
    public LuaValue modFrom(double d10) {
        return LuaDouble.dmod(d10, this.f102762v);
    }

    @Override
    public LuaValue mul(double d10) {
        return LuaDouble.valueOf(d10 * this.f102762v);
    }

    @Override
    public LuaValue neg() {
        return valueOf(-this.f102762v);
    }

    @Override
    public double optdouble(double d10) {
        return this.f102762v;
    }

    @Override
    public int optint(int i10) {
        return this.f102762v;
    }

    @Override
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return this;
    }

    @Override
    public String optjstring(String str) {
        return Integer.toString(this.f102762v);
    }

    @Override
    public long optlong(long j10) {
        return this.f102762v;
    }

    @Override
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(Integer.toString(this.f102762v));
    }

    @Override
    public LuaValue pow(double d10) {
        return MathLib.dpow(this.f102762v, d10);
    }

    @Override
    public LuaValue powWith(double d10) {
        return MathLib.dpow(d10, this.f102762v);
    }

    @Override
    public boolean raweq(double d10) {
        return ((double) this.f102762v) == d10;
    }

    @Override
    public int strcmp(LuaString luaString) {
        typerror("attempt to compare number with string");
        return 0;
    }

    @Override
    public LuaString strvalue() {
        return LuaString.valueOf(Integer.toString(this.f102762v));
    }

    @Override
    public LuaValue sub(double d10) {
        return LuaDouble.valueOf(this.f102762v - d10);
    }

    @Override
    public LuaValue subFrom(double d10) {
        return LuaDouble.valueOf(d10 - this.f102762v);
    }

    @Override
    public byte tobyte() {
        return (byte) this.f102762v;
    }

    @Override
    public char tochar() {
        return (char) this.f102762v;
    }

    @Override
    public double todouble() {
        return this.f102762v;
    }

    @Override
    public float tofloat() {
        return this.f102762v;
    }

    @Override
    public int toint() {
        return this.f102762v;
    }

    @Override
    public String tojstring() {
        return Integer.toString(this.f102762v);
    }

    @Override
    public long tolong() {
        return this.f102762v;
    }

    @Override
    public short toshort() {
        return (short) this.f102762v;
    }

    @Override
    public LuaValue tostring() {
        return LuaString.valueOf(Integer.toString(this.f102762v));
    }

    public static int hashCode(int i10) {
        return i10;
    }

    public static LuaNumber valueOf(long j10) {
        int i10 = (int) j10;
        return j10 == ((long) i10) ? (i10 > 255 || i10 < -256) ? new LuaInteger(i10) : intValues[i10 + 256] : LuaDouble.valueOf(j10);
    }

    @Override
    public LuaValue add(int i10) {
        return valueOf(i10 + this.f102762v);
    }

    @Override
    public LuaValue div(int i10) {
        return LuaDouble.ddiv(this.f102762v, i10);
    }

    @Override
    public LuaValue gt(int i10) {
        return this.f102762v > i10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(int i10) {
        return this.f102762v > i10;
    }

    @Override
    public LuaValue gteq(int i10) {
        return this.f102762v >= i10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(int i10) {
        return this.f102762v >= i10;
    }

    @Override
    public LuaValue lt(int i10) {
        return this.f102762v < i10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(int i10) {
        return this.f102762v < i10;
    }

    @Override
    public LuaValue lteq(int i10) {
        return this.f102762v <= i10 ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(int i10) {
        return this.f102762v <= i10;
    }

    @Override
    public LuaValue mod(int i10) {
        return LuaDouble.dmod(this.f102762v, i10);
    }

    @Override
    public LuaValue mul(int i10) {
        return valueOf(i10 * this.f102762v);
    }

    @Override
    public LuaValue pow(int i10) {
        return MathLib.dpow(this.f102762v, i10);
    }

    @Override
    public LuaValue powWith(int i10) {
        return MathLib.dpow(i10, this.f102762v);
    }

    @Override
    public boolean raweq(int i10) {
        return this.f102762v == i10;
    }

    @Override
    public LuaValue sub(int i10) {
        return LuaValue.valueOf(this.f102762v - i10);
    }

    @Override
    public LuaValue subFrom(int i10) {
        return valueOf(i10 - this.f102762v);
    }

    @Override
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.f102762v);
    }

    @Override
    public LuaValue div(LuaValue luaValue) {
        return luaValue.divInto(this.f102762v);
    }

    @Override
    public LuaValue gt(LuaValue luaValue) {
        return luaValue.lt_b(this.f102762v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gt_b(LuaValue luaValue) {
        return luaValue.lt_b(this.f102762v);
    }

    @Override
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.lteq_b(this.f102762v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.lteq_b(this.f102762v);
    }

    @Override
    public LuaValue lt(LuaValue luaValue) {
        return luaValue.gt_b(this.f102762v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lt_b(LuaValue luaValue) {
        return luaValue.gt_b(this.f102762v);
    }

    @Override
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue.gteq_b(this.f102762v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue.gteq_b(this.f102762v);
    }

    @Override
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.f102762v);
    }

    @Override
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.f102762v);
    }

    @Override
    public LuaValue pow(LuaValue luaValue) {
        return luaValue.powWith(this.f102762v);
    }

    @Override
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this.f102762v);
    }

    @Override
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.f102762v);
    }
}
