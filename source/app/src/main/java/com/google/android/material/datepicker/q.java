package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Iterator;
import w1.C15879a;

public class q extends BaseAdapter {

    public static final int f64371g = y.v().getMaximum(4);

    public final p f64372b;

    public final f<?> f64373c;

    public Collection<Long> f64374d;

    public c f64375e;

    public final a f64376f;

    public q(p pVar, f<?> fVar, a aVar) {
        this.f64372b = pVar;
        this.f64373c = fVar;
        this.f64376f = aVar;
        this.f64374d = fVar.L();
    }

    public int a(int i10) {
        return b() + (i10 - 1);
    }

    public int b() {
        return this.f64372b.h();
    }

    @Override
    @Nullable
    public Long getItem(int i10) {
        if (i10 < this.f64372b.h() || i10 > i()) {
            return null;
        }
        return Long.valueOf(this.f64372b.m(j(i10)));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0083 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0084  */
    @Override
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextView getView(int i10, @Nullable View view, @NonNull ViewGroup viewGroup) {
        Long item;
        e(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C15879a.k.f124003m0, viewGroup, false);
        }
        int b10 = i10 - b();
        if (b10 >= 0) {
            p pVar = this.f64372b;
            if (b10 < pVar.f64368f) {
                int i11 = b10 + 1;
                textView.setTag(pVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, com.google.android.material.timepicker.f.f65291j, Integer.valueOf(i11)));
                long m10 = this.f64372b.m(i11);
                if (this.f64372b.f64366d == p.g().f64366d) {
                    textView.setContentDescription(g.g(m10));
                } else {
                    textView.setContentDescription(g.l(m10));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
                item = getItem(i10);
                if (item != null) {
                    return textView;
                }
                k(textView, item.longValue());
                return textView;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        item = getItem(i10);
        if (item != null) {
        }
    }

    public final void e(Context context) {
        if (this.f64375e == null) {
            this.f64375e = new c(context);
        }
    }

    public boolean f(int i10) {
        return i10 % this.f64372b.f64367e == 0;
    }

    public boolean g(int i10) {
        return (i10 + 1) % this.f64372b.f64367e == 0;
    }

    @Override
    public int getCount() {
        return this.f64372b.f64368f + b();
    }

    @Override
    public long getItemId(int i10) {
        return i10 / this.f64372b.f64367e;
    }

    public final boolean h(long j10) {
        Iterator<Long> it = this.f64373c.L().iterator();
        while (it.hasNext()) {
            if (y.a(j10) == y.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean hasStableIds() {
        return true;
    }

    public int i() {
        return (this.f64372b.h() + this.f64372b.f64368f) - 1;
    }

    public int j(int i10) {
        return (i10 - this.f64372b.h()) + 1;
    }

    public final void k(@Nullable TextView textView, long j10) {
        b bVar;
        if (textView == null) {
            return;
        }
        if (this.f64376f.g().a(j10)) {
            textView.setEnabled(true);
            bVar = h(j10) ? this.f64375e.f64246b : y.t().getTimeInMillis() == j10 ? this.f64375e.f64247c : this.f64375e.f64245a;
        } else {
            textView.setEnabled(false);
            bVar = this.f64375e.f64251g;
        }
        bVar.f(textView);
    }

    public final void l(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (p.e(j10).equals(this.f64372b)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(this.f64372b.q(j10)) - materialCalendarGridView.getFirstVisiblePosition()), j10);
        }
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f64374d.iterator();
        while (it.hasNext()) {
            l(materialCalendarGridView, it.next().longValue());
        }
        f<?> fVar = this.f64373c;
        if (fVar != null) {
            Iterator<Long> it2 = fVar.L().iterator();
            while (it2.hasNext()) {
                l(materialCalendarGridView, it2.next().longValue());
            }
            this.f64374d = this.f64373c.L();
        }
    }

    public boolean n(int i10) {
        return i10 >= b() && i10 <= i();
    }
}
