package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.Locale;
import w1.C15879a;

public class j extends BaseAdapter {

    public static final int f64272e = 4;

    public static final int f64273f = 4;

    @NonNull
    public final Calendar f64274b;

    public final int f64275c;

    public final int f64276d;

    public j() {
        Calendar v10 = y.v();
        this.f64274b = v10;
        this.f64275c = v10.getMaximum(7);
        this.f64276d = v10.getFirstDayOfWeek();
    }

    @Override
    @Nullable
    public Integer getItem(int i10) {
        if (i10 >= this.f64275c) {
            return null;
        }
        return Integer.valueOf(b(i10));
    }

    public final int b(int i10) {
        int i11 = i10 + this.f64276d;
        int i12 = this.f64275c;
        return i11 > i12 ? i11 - i12 : i11;
    }

    @Override
    public int getCount() {
        return this.f64275c;
    }

    @Override
    public long getItemId(int i10) {
        return 0L;
    }

    @Override
    @Nullable
    @SuppressLint({"WrongConstant"})
    public View getView(int i10, @Nullable View view, @NonNull ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C15879a.k.f124005n0, viewGroup, false);
        }
        this.f64274b.set(7, b(i10));
        textView.setText(this.f64274b.getDisplayName(7, f64273f, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C15879a.m.f124128w0), this.f64274b.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
