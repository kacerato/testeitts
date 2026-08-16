package K6;

import G0.C2595v;
import com.github.javaparser.JavaParser;
import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Range;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;

public final class k {

    public class a implements Consumer<MethodDeclaration> {

        public final List f10913b;

        public a(final List val$out) {
            this.f10913b = val$out;
        }

        @Override
        public void accept(MethodDeclaration methodDeclaration) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            NodeList<Parameter> parameters = methodDeclaration.getParameters();
            String str = "";
            int i10 = 0;
            boolean z10 = false;
            while (i10 < parameters.size()) {
                Parameter parameter = parameters.get(i10);
                if (i10 > 0) {
                    str = str + ", ";
                }
                str = str + parameter.getType2().asString();
                steppedArrayList.add(parameter.getType2().asString());
                i10++;
                z10 = true;
            }
            String asString = methodDeclaration.getType2().asString();
            f fVar = new f(methodDeclaration.getNameAsString() + "(" + str + ") -> " + asString, methodDeclaration.getNameAsString());
            fVar.f10887b = asString;
            fVar.f10891f = "method";
            fVar.f10889d = "(" + str + ") -> " + asString;
            fVar.f10890e = C2595v.f7483b;
            fVar.f10896k = true;
            fVar.f10897l = z10;
            fVar.f10892g.addAll(steppedArrayList);
            this.f10913b.add(fVar);
        }
    }

    public static void d(int i10, List list, VariableDeclarator variableDeclarator) {
        Optional<Range> range = variableDeclarator.getRange();
        if (range.isPresent() && range.get().begin.line <= i10) {
            Optional<N> findAncestor = variableDeclarator.findAncestor(MethodDeclaration.class);
            boolean z10 = true;
            boolean z11 = false;
            if (findAncestor.isPresent()) {
                Range orElse = ((MethodDeclaration) findAncestor.get()).getRange().orElse(null);
                if (orElse == null) {
                    z10 = false;
                } else if (i10 < orElse.begin.line || i10 > orElse.end.line) {
                    return;
                }
                z11 = z10;
                z10 = false;
            }
            f fVar = new f(variableDeclarator.getNameAsString() + " : " + variableDeclarator.getType2().asString(), variableDeclarator.getType2().asString(), variableDeclarator.getNameAsString());
            fVar.f10891f = C2595v.f7483b;
            fVar.f10889d = variableDeclarator.getType2().asString();
            fVar.f10890e = C2595v.f7483b;
            fVar.f10893h = z11;
            fVar.f10894i = z10;
            list.add(fVar);
        }
    }

    public static void e(int i10, List list, Parameter parameter) {
        Range orElse;
        Optional<Range> range = parameter.getRange();
        if (range.isPresent() && range.get().begin.line <= i10) {
            Optional<N> findAncestor = parameter.findAncestor(MethodDeclaration.class);
            if (findAncestor.isPresent() && (orElse = ((MethodDeclaration) findAncestor.get()).getRange().orElse(null)) != null && i10 >= orElse.begin.line && i10 <= orElse.end.line) {
                f fVar = new f(parameter.getNameAsString() + " : " + parameter.getType2().asString(), parameter.getType2().asString(), parameter.getNameAsString());
                fVar.f10891f = C2595v.f7483b;
                fVar.f10889d = parameter.getType2().asString();
                fVar.f10890e = C2595v.f7483b;
                fVar.f10893h = true;
                fVar.f10894i = true;
                list.add(fVar);
            }
        }
    }

    public List<f> c(String fullScript, final int lineNumber) {
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                JavaParser javaParser = new JavaParser(new ParserConfiguration().setLanguageLevel(ParserConfiguration.LanguageLevel.JAVA_8));
                ParseResult<CompilationUnit> parse = javaParser.parse(fullScript);
                if (parse.isSuccessful()) {
                    if (!parse.getResult().isPresent()) {
                    }
                    if (!parse.isSuccessful() && parse.getResult().isPresent()) {
                        CompilationUnit compilationUnit = parse.getResult().get();
                        final SteppedArrayList steppedArrayList = new SteppedArrayList();
                        compilationUnit.findAll(VariableDeclarator.class).forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                k.d(lineNumber, steppedArrayList, (VariableDeclarator) obj);
                            }
                        });
                        compilationUnit.findAll(Parameter.class).forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                k.e(lineNumber, steppedArrayList, (Parameter) obj);
                            }
                        });
                        compilationUnit.findAll(MethodDeclaration.class).forEach(new a(steppedArrayList));
                        return e.d(steppedArrayList);
                    }
                }
                String f10 = f(fullScript, lineNumber, ";");
                if (!f10.isEmpty() && !f10.equals(fullScript)) {
                    parse = javaParser.parse(f10);
                }
                if (!parse.isSuccessful()) {
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new SteppedArrayList();
    }

    public final String f(String fullScript, int lineNumber, String replacement) {
        if (fullScript != null && !fullScript.isEmpty()) {
            String[] split = fullScript.split("\\r?\\n", -1);
            if (lineNumber >= 0 && lineNumber < split.length) {
                if (replacement == null) {
                    replacement = "";
                }
                split[lineNumber] = replacement;
                StringBuilder sb2 = new StringBuilder();
                for (int i10 = 0; i10 < split.length; i10++) {
                    if (i10 > 0) {
                        sb2.append('\n');
                    }
                    sb2.append(split[i10]);
                }
                return sb2.toString();
            }
        }
        return "";
    }
}
