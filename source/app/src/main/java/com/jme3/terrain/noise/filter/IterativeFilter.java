package com.jme3.terrain.noise.filter;

import com.jme3.terrain.noise.Filter;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class IterativeFilter extends AbstractFilter {
    private Filter filter;
    private int iterations;
    private List<Filter> preIterateFilters = new ArrayList();
    private List<Filter> postIterateFilters = new ArrayList();

    public IterativeFilter addPostIterateFilter(Filter filter) {
        this.postIterateFilters.add(filter);
        return this;
    }

    public IterativeFilter addPreIterateFilter(Filter filter) {
        this.preIterateFilters.add(filter);
        return this;
    }

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        if (!isEnabled()) {
            return floatBuffer;
        }
        int i11 = 0;
        while (i11 < this.iterations) {
            Iterator<Filter> it = this.preIterateFilters.iterator();
            FloatBuffer floatBuffer2 = floatBuffer;
            while (it.hasNext()) {
                floatBuffer2 = it.next().doFilter(f10, f11, f12, floatBuffer2, i10);
            }
            FloatBuffer doFilter = this.filter.doFilter(f10, f11, f12, floatBuffer2, i10);
            Iterator<Filter> it2 = this.postIterateFilters.iterator();
            FloatBuffer floatBuffer3 = doFilter;
            while (it2.hasNext()) {
                floatBuffer3 = it2.next().doFilter(f10, f11, f12, floatBuffer3, i10);
            }
            i11++;
            floatBuffer = floatBuffer3;
        }
        return floatBuffer;
    }

    public int getIterations() {
        return this.iterations;
    }

    @Override
    public int getMargin(int i10, int i11) {
        if (!isEnabled()) {
            return i11;
        }
        Iterator<Filter> it = this.preIterateFilters.iterator();
        while (it.hasNext()) {
            i11 = it.next().getMargin(i10, i11);
        }
        int margin = this.filter.getMargin(i10, i11);
        Iterator<Filter> it2 = this.postIterateFilters.iterator();
        while (it2.hasNext()) {
            margin = it2.next().getMargin(i10, margin);
        }
        return (this.iterations * margin) + super.getMargin(i10, margin);
    }

    public void setFilter(Filter filter) {
        this.filter = filter;
    }

    public void setIterations(int i10) {
        this.iterations = i10;
    }
}
