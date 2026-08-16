package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;
import java.util.ArrayList;
import java.util.List;

public class MapperFunction3D implements Function3D {
    private double _domainEnd;
    private double _domainStart;
    private final List<Entry> _entries = new ArrayList();
    private Function3D _mapFunction;

    public static class Entry {
        double easeIn;
        double easeOut;
        double offsetStart;
        Function3D source;

        private Entry() {
        }
    }

    public MapperFunction3D(Function3D function3D, double d10, double d11) {
        this._mapFunction = function3D;
        this._domainStart = d10;
        this._domainEnd = d11;
    }

    public void addFunction(Function3D function3D, double d10, double d11, double d12) {
        Entry entry = new Entry();
        entry.source = function3D;
        entry.offsetStart = d10;
        entry.easeIn = d11;
        entry.easeOut = d12;
        this._entries.add(entry);
    }

    public void clearFunctions() {
        this._entries.clear();
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double clamp = MathUtils.clamp(this._mapFunction.eval(d10, d11, d12), this._domainStart, this._domainEnd);
        Entry entry = this._entries.get(0);
        double d13 = this._domainStart + entry.offsetStart;
        int i10 = 1;
        Entry entry2 = null;
        while (i10 <= this._entries.size()) {
            Entry entry3 = i10 < this._entries.size() ? this._entries.get(i10) : null;
            double d14 = entry3 != null ? entry3.offsetStart + d13 : this._domainEnd;
            if (clamp <= d14) {
                if (entry2 != null) {
                    double d15 = entry.easeIn;
                    if (clamp < d13 + d15) {
                        return MathUtils.lerp(MathUtils.scurve5((clamp - d13) / d15), entry2.source.eval(d10, d11, d12), entry.source.eval(d10, d11, d12));
                    }
                }
                if (entry3 != null) {
                    double d16 = entry.easeOut;
                    if (clamp > d14 - d16) {
                        return MathUtils.lerp(MathUtils.scurve5(((clamp - d14) / d16) + 1.0d), entry.source.eval(d10, d11, d12), entry3.source.eval(d10, d11, d12));
                    }
                }
                return entry.source.eval(d10, d11, d12);
            }
            i10++;
            entry2 = entry;
            entry = entry3;
            d13 = d14;
        }
        return entry2.source.eval(d10, d11, d12);
    }

    public double getDomainEnd() {
        return this._domainEnd;
    }

    public double getDomainStart() {
        return this._domainStart;
    }

    public Function3D getMapFunction() {
        return this._mapFunction;
    }

    public void removeFunction(int i10) {
        this._entries.remove(i10);
    }

    public void setDomainEnd(double d10) {
        this._domainEnd = d10;
    }

    public void setDomainStart(double d10) {
        this._domainStart = d10;
    }

    public void setMapFunction(Function3D function3D) {
        this._mapFunction = function3D;
    }
}
