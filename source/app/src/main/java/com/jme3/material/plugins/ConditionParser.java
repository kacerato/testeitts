package com.jme3.material.plugins;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ConditionParser {
    private String formattedExpression = "";

    public static void main(String[] strArr) {
        ConditionParser conditionParser = new ConditionParser();
        Iterator<String> it = conditionParser.extractDefines("RoughnessMap && MetallicRoughnessMap").iterator();
        while (it.hasNext()) {
            System.err.println(it.next());
        }
        System.err.println(conditionParser.formattedExpression);
        Iterator<String> it2 = conditionParser.extractDefines("#if (defined(LightMap) && defined(SeparateTexCoord)) || !defined(ColorMap)").iterator();
        while (it2.hasNext()) {
            System.err.println(it2.next());
        }
        System.err.println(conditionParser.formattedExpression);
    }

    public List<String> extractDefines(String str) {
        ArrayList arrayList = new ArrayList();
        String replaceAll = str.replaceAll("#ifdef", "").replaceAll("#if", "").replaceAll("defined", "");
        Pattern compile = Pattern.compile("(\\w+)");
        this.formattedExpression = replaceAll;
        Matcher matcher = compile.matcher(replaceAll);
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            this.formattedExpression = this.formattedExpression.replaceAll("\\b" + group + "\\b", "defined(" + group.toUpperCase() + ")");
        }
        return arrayList;
    }

    public String getFormattedExpression() {
        return this.formattedExpression;
    }
}
