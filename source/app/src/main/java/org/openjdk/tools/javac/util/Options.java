package org.openjdk.tools.javac.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Context;

public class Options {
    public static final Context.Key<Options> optionsKey = new Context.Key<>();
    private static final long serialVersionUID = 0;
    private List<Runnable> listeners = List.nil();
    private LinkedHashMap<String, String> values = new LinkedHashMap<>();

    public Options(Context context) {
        context.put((Context.Key<Context.Key<Options>>) optionsKey, (Context.Key<Options>) this);
    }

    public static Options instance(Context context) {
        Options options = (Options) context.get(optionsKey);
        return options == null ? new Options(context) : options;
    }

    public void addListener(Runnable runnable) {
        this.listeners = this.listeners.prepend(runnable);
    }

    public String get(String str) {
        return this.values.get(str);
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean isLintSet(String str) {
        Option option = Option.XLINT_CUSTOM;
        if (!isSet(option, str)) {
            if (isSet(Option.XLINT) || isSet(option, Tj.d.f25405q)) {
                if (isUnset(option, "-" + str)) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean isSet(String str) {
        return this.values.get(str) != null;
    }

    public boolean isUnset(String str) {
        return this.values.get(str) == null;
    }

    public Set<String> keySet() {
        return this.values.o();
    }

    public void notifyListeners() {
        Iterator<Runnable> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public void put(String str, String str2) {
        this.values.put(str, str2);
    }

    public void putAll(Options options) {
        this.values.putAll(options.values);
    }

    public void remove(String str) {
        this.values.remove(str);
    }

    public int size() {
        return this.values.size();
    }

    public String get(Option option) {
        return this.values.get(option.primaryName);
    }

    public boolean getBoolean(String str, boolean z10) {
        String str2 = get(str);
        return str2 == null ? z10 : Boolean.parseBoolean(str2);
    }

    public boolean isSet(Option option) {
        return this.values.get(option.primaryName) != null;
    }

    public boolean isUnset(Option option) {
        return this.values.get(option.primaryName) == null;
    }

    public void put(Option option, String str) {
        this.values.put(option.primaryName, str);
    }

    public boolean isSet(Option option, String str) {
        LinkedHashMap<String, String> linkedHashMap = this.values;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(option.primaryName);
        sb2.append(str);
        return linkedHashMap.get(sb2.toString()) != null;
    }

    public boolean isUnset(Option option, String str) {
        LinkedHashMap<String, String> linkedHashMap = this.values;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(option.primaryName);
        sb2.append(str);
        return linkedHashMap.get(sb2.toString()) == null;
    }
}
