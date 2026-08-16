package com.jme3.terrain.noise.filter;

import com.jme3.terrain.noise.Filter;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractFilter implements Filter {
    protected List<Filter> preFilters = new ArrayList();
    protected List<Filter> postFilters = new ArrayList();
    private boolean enabled = true;

    @Override
    public Filter addPostFilter(Filter filter) {
        this.postFilters.add(filter);
        return this;
    }

    @Override
    public Filter addPreFilter(Filter filter) {
        this.preFilters.add(filter);
        return this;
    }

    @Override
    public FloatBuffer doFilter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        if (!isEnabled()) {
            return floatBuffer;
        }
        Iterator<Filter> it = this.preFilters.iterator();
        FloatBuffer floatBuffer2 = floatBuffer;
        while (it.hasNext()) {
            floatBuffer2 = it.next().doFilter(f10, f11, f12, floatBuffer2, i10);
        }
        FloatBuffer filter = filter(f10, f11, f12, floatBuffer2, i10);
        Iterator<Filter> it2 = this.postFilters.iterator();
        FloatBuffer floatBuffer3 = filter;
        while (it2.hasNext()) {
            floatBuffer3 = it2.next().doFilter(f10, f11, f12, floatBuffer3, i10);
        }
        return floatBuffer3;
    }

    public abstract FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10);

    @Override
    public int getMargin(int i10, int i11) {
        if (!isEnabled()) {
            return i11;
        }
        Iterator<Filter> it = this.preFilters.iterator();
        while (it.hasNext()) {
            i11 = it.next().getMargin(i10, i11);
        }
        Iterator<Filter> it2 = this.postFilters.iterator();
        while (it2.hasNext()) {
            i11 = it2.next().getMargin(i10, i11);
        }
        return i11;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }
}
