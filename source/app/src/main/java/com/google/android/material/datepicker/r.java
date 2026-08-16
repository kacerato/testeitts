package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.k;
import w1.C15879a;

public class r extends RecyclerView.Adapter<b> {

    public final Context f64377a;

    @NonNull
    public final com.google.android.material.datepicker.a f64378b;

    public final f<?> f64379c;

    public final k.l f64380d;

    public final int f64381e;

    public class a implements AdapterView.OnItemClickListener {

        public final MaterialCalendarGridView f64382b;

        public a(MaterialCalendarGridView materialCalendarGridView) {
            this.f64382b = materialCalendarGridView;
        }

        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (this.f64382b.getAdapter().n(i10)) {
                r.this.f64380d.a(this.f64382b.getAdapter().getItem(i10).longValue());
            }
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        public final TextView f64384a;

        public final MaterialCalendarGridView f64385b;

        public b(@NonNull LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C15879a.h.f123626Q2);
            this.f64384a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f64385b = (MaterialCalendarGridView) linearLayout.findViewById(C15879a.h.f123591L2);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public r(@NonNull Context context, f<?> fVar, @NonNull com.google.android.material.datepicker.a aVar, k.l lVar) {
        p m10 = aVar.m();
        p h10 = aVar.h();
        p l10 = aVar.l();
        if (m10.compareTo(l10) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (l10.compareTo(h10) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int u10 = q.f64371g * k.u(context);
        int u11 = l.C(context) ? k.u(context) : 0;
        this.f64377a = context;
        this.f64381e = u10 + u11;
        this.f64378b = aVar;
        this.f64379c = fVar;
        this.f64380d = lVar;
        setHasStableIds(true);
    }

    @Override
    public int getItemCount() {
        return this.f64378b.i();
    }

    @Override
    public long getItemId(int i10) {
        return this.f64378b.m().D(i10).C();
    }

    @NonNull
    public p h(int i10) {
        return this.f64378b.m().D(i10);
    }

    @NonNull
    public CharSequence i(int i10) {
        return h(i10).t(this.f64377a);
    }

    public int j(@NonNull p pVar) {
        return this.f64378b.m().E(pVar);
    }

    @Override
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        p D10 = this.f64378b.m().D(i10);
        bVar.f64384a.setText(D10.t(bVar.itemView.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f64385b.findViewById(C15879a.h.f123591L2);
        if (materialCalendarGridView.getAdapter() == null || !D10.equals(materialCalendarGridView.getAdapter().f64372b)) {
            q qVar = new q(D10, this.f64379c, this.f64378b);
            materialCalendarGridView.setNumColumns(D10.f64367e);
            materialCalendarGridView.setAdapter((ListAdapter) qVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override
    @NonNull
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C15879a.k.f124013r0, viewGroup, false);
        if (!l.C(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f64381e));
        return new b(linearLayout, true);
    }
}
