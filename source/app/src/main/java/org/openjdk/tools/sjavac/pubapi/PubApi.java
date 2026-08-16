package org.openjdk.tools.sjavac.pubapi;

import com.android.tools.r8.graph.C4624oe;
import com.android.tools.r8.internal.C8730oF1;
import com.bumptech.glide.load.engine.GlideException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.StringUtils;
import org.openjdk.tools.sjavac.Util;

public class PubApi implements Serializable {
    private static final Pattern METHOD_PATTERN;
    private static final String MODIFIERS;
    private static final Pattern MOD_PATTERN;
    private static final Pattern TYPE_PATTERN;
    private static final Pattern VAR_PATTERN;
    private static final long serialVersionUID = 5926627347801986850L;
    public final Map<String, PubType> types = new HashMap();
    public final Map<String, PubVar> variables = new HashMap();
    public final Map<String, PubMethod> methods = new HashMap();
    private PubType lastInsertedType = null;

    static {
        String str = (String) Stream.of((Object[]) Modifier.values()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Modifier) obj).name();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return StringUtils.toLowerCase((String) obj);
            }
        }).collect(Collectors.joining("|", "(", ")"));
        MODIFIERS = str;
        MOD_PATTERN = Pattern.compile("(" + str + " )*");
        METHOD_PATTERN = Pattern.compile("(?<ret>.+?) (?<name>\\S+)\\((?<params>.*)\\)( throws (?<throws>.*))?");
        VAR_PATTERN = Pattern.compile("VAR (?<modifiers>(" + str + " )*)(?<type>.+?) (?<id>\\S+)( = (?<val>.*))?");
        TYPE_PATTERN = Pattern.compile("TYPE (?<modifiers>(" + str + " )*)(?<fullyQualified>\\S+)");
    }

    public PubApi() {
    }

    private static String asString(Set<Modifier> set) {
        return (String) set.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$asString$2;
                lambda$asString$2 = PubApi.lambda$asString$2((Modifier) obj);
                return lambda$asString$2;
            }
        }).sorted().collect(Collectors.joining());
    }

    private static String commaSeparated(List<TypeDesc> list) {
        return (String) list.stream().map(new a()).collect(Collectors.joining(DocLint.SEPARATOR));
    }

    private static int findClosingTag(String str, int i10) {
        while (true) {
            i10++;
            if (str.charAt(i10) == '>') {
                return i10;
            }
            if (str.charAt(i10) == '<') {
                i10 = findClosingTag(str, i10);
            }
        }
    }

    public static void lambda$asListOfStrings$1(List list, PubType pubType) {
        list.add(typeLine(pubType));
        Iterator<String> it = pubType.pubApi.asListOfStrings().iterator();
        while (it.hasNext()) {
            list.add(GlideException.a.f59088e + it.next());
        }
    }

    public static String lambda$asString$2(Modifier modifier) {
        return ((Object) modifier) + " ";
    }

    public static boolean lambda$parseModifiers$3(String str) {
        return !str.isEmpty();
    }

    public static String lambda$varLine$0(String str) {
        return " = " + str;
    }

    public static PubApi mergeTypes(PubApi pubApi, PubApi pubApi2) {
        Assert.check(pubApi.methods.isEmpty(), "Can only merge types.");
        Assert.check(pubApi2.methods.isEmpty(), "Can only merge types.");
        Assert.check(pubApi.variables.isEmpty(), "Can only merge types.");
        Assert.check(pubApi2.variables.isEmpty(), "Can only merge types.");
        PubApi pubApi3 = new PubApi();
        pubApi3.types.putAll(pubApi.types);
        pubApi3.types.putAll(pubApi2.types);
        return pubApi3;
    }

    public static String methodLine(PubMethod pubMethod) {
        String str;
        String str2;
        String asString = asString(pubMethod.modifiers);
        if (pubMethod.typeParams.isEmpty()) {
            str = "";
        } else {
            str = "<" + ((String) pubMethod.typeParams.stream().map(new i()).collect(Collectors.joining(DocLint.SEPARATOR))) + "> ";
        }
        String encodeAsString = TypeDesc.encodeAsString(pubMethod.returnType);
        String str3 = pubMethod.identifier;
        String commaSeparated = commaSeparated(pubMethod.paramTypes);
        if (pubMethod.throwDecls.isEmpty()) {
            str2 = "";
        } else {
            str2 = " throws " + commaSeparated(pubMethod.throwDecls);
        }
        return String.format("METHOD %s%s%s %s(%s)%s", asString, str, encodeAsString, str3, commaSeparated, str2);
    }

    private static List<TypeDesc> parseTypeDescs(List<String> list) {
        return (List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return TypeDesc.decodeString((String) obj);
            }
        }).collect(Collectors.toList());
    }

    public static PubApiTypeParam parseTypeParam(String str) {
        int indexOf = str.indexOf(" extends ");
        return indexOf == -1 ? new PubApiTypeParam(str, Collections.emptyList()) : new PubApiTypeParam(str.substring(0, indexOf), parseTypeDescs(splitOnTopLevelChars(str.substring(indexOf + 9), '&')));
    }

    private static List<PubApiTypeParam> parseTypeParams(List<String> list) {
        return (List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                PubApiTypeParam parseTypeParam;
                parseTypeParam = PubApi.parseTypeParam((String) obj);
                return parseTypeParam;
            }
        }).collect(Collectors.toList());
    }

    public static List<String> splitOnTopLevelChars(String str, char c10) {
        if (str.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (char c11 : str.toCharArray()) {
            if (c11 == c10 && i10 == 0) {
                arrayList.add(sb2.toString().trim());
                sb2 = new StringBuilder();
            } else {
                if (c11 == '<') {
                    i10++;
                }
                if (c11 == '>') {
                    i10--;
                }
                sb2.append(c11);
            }
        }
        arrayList.add(sb2.toString().trim());
        return arrayList;
    }

    public static String typeLine(PubType pubType) {
        if (!pubType.fqName.isEmpty()) {
            return String.format("TYPE %s%s", asString(pubType.modifiers), pubType.fqName);
        }
        throw new RuntimeException("empty class name " + ((Object) pubType));
    }

    public static String varLine(PubVar pubVar) {
        return String.format("VAR %s%s %s%s", asString(pubVar.modifiers), TypeDesc.encodeAsString(pubVar.type), pubVar.identifier, pubVar.getConstValue().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$varLine$0;
                lambda$varLine$0 = PubApi.lambda$varLine$0((String) obj);
                return lambda$varLine$0;
            }
        }).orElse(""));
    }

    public void addPubMethod(PubMethod pubMethod) {
        this.methods.put(pubMethod.asSignatureString(), pubMethod);
    }

    public void addPubType(PubType pubType) {
        this.types.put(pubType.fqName, pubType);
        this.lastInsertedType = pubType;
    }

    public void addPubVar(PubVar pubVar) {
        this.variables.put(pubVar.identifier, pubVar);
    }

    public void appendItem(String str) {
        try {
            if (str.startsWith(GlideException.a.f59088e)) {
                this.lastInsertedType.pubApi.appendItem(str.substring(2));
                return;
            }
            if (!str.startsWith("METHOD")) {
                Matcher matcher = VAR_PATTERN.matcher(str);
                if (matcher.matches()) {
                    addPubVar(new PubVar(parseModifiers(matcher.group("modifiers")), TypeDesc.decodeString(matcher.group("type")), matcher.group("id"), matcher.group("val")));
                    return;
                }
                Matcher matcher2 = TYPE_PATTERN.matcher(str);
                if (!matcher2.matches()) {
                    throw new AssertionError((Object) "No matching line pattern.");
                }
                addPubType(new PubType(parseModifiers(matcher2.group("modifiers")), matcher2.group("fullyQualified"), new PubApi()));
                return;
            }
            String substring = str.substring(7);
            HashSet hashSet = new HashSet();
            Matcher matcher3 = MOD_PATTERN.matcher(substring);
            if (matcher3.find()) {
                String group = matcher3.group();
                hashSet.addAll(parseModifiers(group));
                substring = substring.substring(group.length());
            }
            ArrayList arrayList = new ArrayList();
            if (substring.startsWith("<")) {
                int findClosingTag = findClosingTag(substring, 0);
                String substring2 = substring.substring(1, findClosingTag);
                substring = substring.substring(findClosingTag + 1);
                arrayList.addAll(parseTypeParams(splitOnTopLevelCommas(substring2)));
            }
            Matcher matcher4 = METHOD_PATTERN.matcher(substring);
            if (matcher4.matches()) {
                addPubMethod(new PubMethod(hashSet, arrayList, TypeDesc.decodeString(matcher4.group("ret")), matcher4.group("name"), parseTypeDescs(splitOnTopLevelCommas(matcher4.group("params"))), parseTypeDescs(splitOnTopLevelCommas((String) Optional.ofNullable(matcher4.group("throws")).orElse("")))));
            } else {
                throw new AssertionError((Object) ("Could not parse return type, identifier, parameter types or throws declaration of method: " + substring));
            }
        } catch (Throwable th2) {
            throw new AssertionError("Could not parse API line: " + str, th2);
        }
    }

    public List<String> asListOfStrings() {
        final ArrayList arrayList = new ArrayList();
        this.types.values().stream().sorted(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                String typeLine;
                typeLine = PubApi.typeLine((PubType) obj);
                return typeLine;
            }
        })).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PubApi.lambda$asListOfStrings$1(List.this, (PubType) obj);
            }
        });
        this.variables.values().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String varLine;
                varLine = PubApi.varLine((PubVar) obj);
                return varLine;
            }
        }).sorted().forEach(new C8730oF1(arrayList));
        this.methods.values().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String methodLine;
                methodLine = PubApi.methodLine((PubMethod) obj);
                return methodLine;
            }
        }).sorted().forEach(new C8730oF1(arrayList));
        return arrayList;
    }

    public List<String> diff(PubApi pubApi) {
        return diff("", pubApi);
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        PubApi pubApi = (PubApi) obj;
        return this.types.equals(pubApi.types) && this.variables.equals(pubApi.variables) && this.methods.equals(pubApi.methods);
    }

    public int hashCode() {
        return (this.types.o().hashCode() ^ this.variables.o().hashCode()) ^ this.methods.o().hashCode();
    }

    public boolean isBackwardCompatibleWith(PubApi pubApi) {
        return equals(pubApi);
    }

    public boolean isEmpty() {
        return this.types.isEmpty() && this.variables.isEmpty() && this.methods.isEmpty();
    }

    public Set<Modifier> parseModifiers(String str) {
        return str == null ? Collections.emptySet() : (Set) Stream.of((Object[]) str.split(" ")).map(new C4624oe()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return StringUtils.toUpperCase((String) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$parseModifiers$3;
                lambda$parseModifiers$3 = PubApi.lambda$parseModifiers$3((String) obj);
                return lambda$parseModifiers$3;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Modifier.valueOf((String) obj);
            }
        }).collect(Collectors.toSet());
    }

    public List<String> splitOnTopLevelCommas(String str) {
        return splitOnTopLevelChars(str, IIndexConstants.PARAMETER_SEPARATOR);
    }

    public String toString() {
        return String.format("%s[types: %s, variables: %s, methods: %s]", getClass().getSimpleName(), this.types.values(), this.variables.values(), this.methods.values());
    }

    private List<String> diff(String str, PubApi pubApi) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : Util.union(this.types.o(), pubApi.types.o())) {
            PubType pubType = this.types.get(str2);
            PubType pubType2 = pubApi.types.get(str2);
            if (pubType2 == null) {
                arrayList.add("Type " + str + str2 + " was added");
            } else if (pubType == null) {
                arrayList.add("Type " + str + str2 + " was removed");
            } else {
                if (!pubType.modifiers.equals(pubType2.modifiers)) {
                    arrayList.add("Modifiers for type " + str + str2 + " changed from " + ((Object) pubType2.modifiers) + " to " + ((Object) pubType.modifiers));
                }
                arrayList.addAll(pubType.pubApi.diff(pubType2.pubApi));
            }
        }
        for (String str3 : Util.union(this.variables.o(), pubApi.variables.o())) {
            PubVar pubVar = this.variables.get(str3);
            PubVar pubVar2 = pubApi.variables.get(str3);
            if (pubVar2 == null) {
                arrayList.add("Variable " + str + str3 + " was added");
            } else if (pubVar == null) {
                arrayList.add("Variable " + str + str3 + " was removed");
            } else {
                if (!pubVar.modifiers.equals(pubVar2.modifiers)) {
                    arrayList.add("Modifiers for var " + str + str3 + " changed from " + ((Object) pubVar2.modifiers) + " to " + ((Object) pubVar.modifiers));
                }
                if (!pubVar.type.equals(pubVar2.type)) {
                    arrayList.add("Type of " + str + str3 + " changed from " + ((Object) pubVar2.type) + " to " + ((Object) pubVar.type));
                }
                if (!pubVar.getConstValue().equals(pubVar2.getConstValue())) {
                    arrayList.add("Const value of " + str + str3 + " changed from " + pubVar2.getConstValue().orElse("<none>") + " to " + pubVar.getConstValue().orElse("<none>"));
                }
            }
        }
        for (String str4 : Util.union(this.methods.o(), pubApi.methods.o())) {
            PubMethod pubMethod = this.methods.get(str4);
            PubMethod pubMethod2 = pubApi.methods.get(str4);
            if (pubMethod2 == null) {
                arrayList.add("Method " + str + str4 + " was added");
            } else if (pubMethod == null) {
                arrayList.add("Method " + str + str4 + " was removed");
            } else {
                if (!pubMethod.modifiers.equals(pubMethod2.modifiers)) {
                    arrayList.add("Modifiers for method " + str + str4 + " changed from " + ((Object) pubMethod2.modifiers) + " to " + ((Object) pubMethod.modifiers));
                }
                if (!pubMethod.typeParams.equals(pubMethod2.typeParams)) {
                    arrayList.add("Type parameters for method " + str + str4 + " changed from " + ((Object) pubMethod2.typeParams) + " to " + ((Object) pubMethod.typeParams));
                }
                if (!pubMethod.throwDecls.equals(pubMethod2.throwDecls)) {
                    arrayList.add("Throw decl for method " + str + str4 + " changed from " + ((Object) pubMethod2.throwDecls) + " to  to " + ((Object) pubMethod.throwDecls));
                }
            }
        }
        return arrayList;
    }

    public PubApi(Collection<PubType> collection, Collection<PubVar> collection2, Collection<PubMethod> collection3) {
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PubApi.this.addPubType((PubType) obj);
            }
        });
        collection2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PubApi.this.addPubVar((PubVar) obj);
            }
        });
        collection3.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PubApi.this.addPubMethod((PubMethod) obj);
            }
        });
    }
}
