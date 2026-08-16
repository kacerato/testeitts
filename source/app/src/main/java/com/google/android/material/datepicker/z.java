package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.k;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import w1.C15879a;

public class z extends RecyclerView.Adapter<b> {

    public final k<?> f64411a;

    public class a implements View.OnClickListener {

        public final int f64412b;

        public a(int i10) {
            this.f64412b = i10;
        }

        @Override
        public void onClick(View view) {
            z.this.f64411a.y(z.this.f64411a.r().f(p.d(this.f64412b, z.this.f64411a.t().f64365c)));
            z.this.f64411a.z(k.EnumC0963k.DAY);
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        public final TextView f64414a;

        public b(TextView textView) {
            super(textView);
            this.f64414a = textView;
        }
    }

    public z(k<?> kVar) {
        this.f64411a = kVar;
    }

    @Override
    public int getItemCount() {
        return this.f64411a.r().n();
    }

    @NonNull
    public final View.OnClickListener h(int i10) {
        return new a(i10);
    }

    public int i(int i10) {
        return i10 - this.f64411a.r().m().f64366d;
    }

    public int j(int i10) {
        return this.f64411a.r().m().f64366d + i10;
    }

    @Override
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        int j10 = j(i10);
        String string = bVar.f64414a.getContext().getString(C15879a.m.f124034B0);
        bVar.f64414a.setText(String.format(Locale.getDefault(), com.google.android.material.timepicker.f.f65291j, Integer.valueOf(j10)));
        bVar.f64414a.setContentDescription(String.format(string, Integer.valueOf(j10)));
        c s10 = this.f64411a.s();
        Calendar t10 = y.t();
        com.google.android.material.datepicker.b bVar2 = t10.get(1) == j10 ? s10.f64250f : s10.f64248d;
        Iterator<Long> it = this.f64411a.g().L().iterator();
        while (it.hasNext()) {
            t10.setTimeInMillis(it.next().longValue());
            if (t10.get(1) == j10) {
                bVar2 = s10.f64249e;
            }
        }
        bVar2.f(bVar.f64414a);
        bVar.f64414a.setOnClickListener(h(j10));
    }

    @Override
    @NonNull
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C15879a.k.f124021v0, viewGroup, false));
    }
}
