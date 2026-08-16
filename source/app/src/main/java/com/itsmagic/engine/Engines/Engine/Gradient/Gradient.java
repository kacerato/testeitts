package com.itsmagic.engine.Engines.Engine.Gradient;

import JAVARuntime.ColorGradient;
import K8.f;
import Nc.b;
import android.content.Context;
import android.graphics.Bitmap;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class Gradient extends f {

    public ColorGradient f77950b;

    @Expose
    private final List<Entry> entries = new SteppedArrayList();

    public class a implements Comparator<Entry> {
        public a() {
        }

        @Override
        public int compare(Entry o12, Entry o22) {
            return Float.compare(o12.d(), o22.d());
        }
    }

    public static Gradient m(String json, Context context) {
        try {
            return (Gradient) X7.a.m().fromJson(json, Gradient.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void clear() {
        synchronized (this.entries) {
            this.entries.clear();
        }
    }

    public Entry d(float p10, ColorINT colorINT) {
        Entry entry = new Entry();
        entry.f(p10);
        entry.e(colorINT);
        synchronized (this.entries) {
            this.entries.add(entry);
            o();
        }
        return entry;
    }

    public void e(Entry entry) {
        synchronized (this.entries) {
            this.entries.add(entry);
            o();
        }
    }

    public Gradient clone() {
        Gradient gradient = new Gradient();
        gradient.entries.clear();
        Iterator<Entry> it = this.entries.iterator();
        while (it.hasNext()) {
            gradient.e(it.next().clone());
        }
        return gradient;
    }

    public Bitmap h(int width, int height) {
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        for (int i10 = 0; i10 < width; i10++) {
            ColorINT k10 = k(i10 / (width - 1));
            if (k10 == null) {
                k10 = new ColorINT();
            }
            for (int i11 = 0; i11 < height; i11++) {
                createBitmap.setPixel(i10, i11, k10.intColor);
            }
        }
        return createBitmap;
    }

    public Entry i(int x10) {
        return this.entries.get(x10);
    }

    public int j() {
        return this.entries.size();
    }

    public ColorINT k(float p10) {
        synchronized (this.entries) {
            try {
                float I10 = b.I(p10);
                if (this.entries.isEmpty()) {
                    return null;
                }
                int i10 = 0;
                Entry entry = null;
                while (i10 < this.entries.size()) {
                    Entry entry2 = this.entries.get(i10);
                    if (entry2.d() == I10) {
                        return entry2.c();
                    }
                    if (entry2.d() > I10 && entry != null) {
                        return entry.a(entry2, (I10 - entry.d()) / (entry2.d() - entry.d()));
                    }
                    i10++;
                    entry = entry2;
                }
                if (entry == null) {
                    return null;
                }
                return entry.c();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void l(float p10, final ColorINT out) {
        synchronized (this.entries) {
            try {
                float I10 = b.I(p10);
                if (this.entries.isEmpty()) {
                    out.S(1.0f, 1.0f, 1.0f);
                    return;
                }
                Entry entry = null;
                int i10 = 0;
                while (i10 < this.entries.size()) {
                    Entry entry2 = this.entries.get(i10);
                    if (entry2.d() == I10) {
                        out.K(entry2.c());
                        return;
                    } else if (entry2.d() > I10 && entry != null) {
                        out.K(entry.a(entry2, (I10 - entry.d()) / (entry2.d() - entry.d())));
                        return;
                    } else {
                        i10++;
                        entry = entry2;
                    }
                }
                if (out == null && entry != null) {
                    out.K(entry.c());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void n() {
        synchronized (this.entries) {
            this.entries.clear();
            this.entries.add(new Entry(0.0f, new ColorINT()));
            this.entries.add(new Entry(1.0f, new ColorINT(0, 0, 0)));
            o();
        }
    }

    public void o() {
        synchronized (this.entries) {
            try {
                Collections.sort(this.entries, new a());
                HashSet hashSet = new HashSet();
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (Entry entry : this.entries) {
                    if (!hashSet.contains(Float.valueOf(entry.d()))) {
                        hashSet.add(Float.valueOf(entry.d()));
                        steppedArrayList.add(entry);
                    }
                }
                this.entries.clear();
                this.entries.addAll(steppedArrayList);
                float f10 = 0.0f;
                float f11 = 1.0f;
                for (Entry entry2 : this.entries) {
                    if (entry2.d() <= f11) {
                        f11 = entry2.d();
                    }
                    if (entry2.d() >= f10) {
                        f10 = entry2.d();
                    }
                }
                if (f11 > 0.0f) {
                    this.entries.add(0, new Entry(0.0f, new ColorINT()));
                }
                if (f10 < 1.0f) {
                    this.entries.add(new Entry(1.0f, new ColorINT(0, 0, 0)));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void p(float p10) {
        for (Entry entry : this.entries) {
            if (entry.d() == p10) {
                q(entry);
                return;
            }
        }
    }

    public void q(Entry entry) {
        synchronized (this.entries) {
            this.entries.remove(entry);
        }
    }

    public void r(Gradient other) {
        synchronized (this.entries) {
            try {
                this.entries.clear();
                if (other == null) {
                    n();
                    return;
                }
                synchronized (other.entries) {
                    try {
                        for (Entry entry : other.entries) {
                            if (entry != null) {
                                this.entries.add(entry.clone());
                            }
                        }
                    } finally {
                    }
                }
                if (this.entries.isEmpty()) {
                    n();
                } else {
                    o();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public ColorGradient s() {
        ColorGradient colorGradient = this.f77950b;
        if (colorGradient != null) {
            return colorGradient;
        }
        ColorGradient colorGradient2 = new ColorGradient(this);
        this.f77950b = colorGradient2;
        return colorGradient2;
    }

    public String u(Context context) {
        return X7.a.m().toJson(this);
    }

    public void v(Bitmap bitmap) {
        for (int i10 = 0; i10 < bitmap.getWidth(); i10++) {
            ColorINT k10 = k(i10 / (bitmap.getWidth() - 1));
            if (k10 == null) {
                k10 = new ColorINT();
            }
            for (int i11 = 0; i11 < bitmap.getHeight(); i11++) {
                bitmap.setPixel(i10, i11, k10.intColor);
            }
        }
    }
}
