package org.apache.commons.lang3.exception;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class DefaultExceptionContext implements ExceptionContext, Serializable {
    private static final long serialVersionUID = 20110706;
    private final List<Pair<String, Object>> contextValues = new ArrayList();

    @Override
    public List<Pair<String, Object>> getContextEntries() {
        return this.contextValues;
    }

    @Override
    public Set<String> getContextLabels() {
        HashSet hashSet = new HashSet();
        Iterator<Pair<String, Object>> it = this.contextValues.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getKey());
        }
        return hashSet;
    }

    @Override
    public List<Object> getContextValues(String str) {
        ArrayList arrayList = new ArrayList();
        for (Pair<String, Object> pair : this.contextValues) {
            if (StringUtils.equals(str, pair.getKey())) {
                arrayList.add(pair.getValue());
            }
        }
        return arrayList;
    }

    @Override
    public Object getFirstContextValue(String str) {
        for (Pair<String, Object> pair : this.contextValues) {
            if (StringUtils.equals(str, pair.getKey())) {
                return pair.getValue();
            }
        }
        return null;
    }

    @Override
    public String getFormattedExceptionMessage(String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder(256);
        if (str != null) {
            sb2.append(str);
        }
        if (this.contextValues.size() > 0) {
            if (sb2.length() > 0) {
                sb2.append('\n');
            }
            sb2.append("Exception Context:\n");
            int i10 = 0;
            for (Pair<String, Object> pair : this.contextValues) {
                sb2.append("\t[");
                i10++;
                sb2.append(i10);
                sb2.append(':');
                sb2.append(pair.getKey());
                sb2.append("=");
                Object value = pair.getValue();
                if (value == null) {
                    sb2.append("null");
                } else {
                    try {
                        str2 = value.toString();
                    } catch (Exception e10) {
                        str2 = "Exception thrown on toString(): " + ExceptionUtils.getStackTrace(e10);
                    }
                    sb2.append(str2);
                }
                sb2.append("]\n");
            }
            sb2.append("---------------------------------");
        }
        return sb2.toString();
    }

    @Override
    public DefaultExceptionContext addContextValue(String str, Object obj) {
        this.contextValues.add(new ImmutablePair(str, obj));
        return this;
    }

    @Override
    public DefaultExceptionContext setContextValue(String str, Object obj) {
        Iterator<Pair<String, Object>> it = this.contextValues.iterator();
        while (it.hasNext()) {
            if (StringUtils.equals(str, it.next().getKey())) {
                it.remove();
            }
        }
        addContextValue(str, obj);
        return this;
    }
}
