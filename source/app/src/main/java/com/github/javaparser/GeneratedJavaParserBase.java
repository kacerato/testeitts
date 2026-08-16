package com.github.javaparser;

import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.comments.CommentsCollection;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.CastExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.utils.Pair;
import com.github.javaparser.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.JavadocConstants;

public abstract class GeneratedJavaParserBase {
    List<Problem> problems = new ArrayList();
    boolean storeTokens;

    public void lambda$propagateRangeGrowthOnRight$0(final Node node, final Node endNode, Node nodeParent) {
        if (node.getTokenRange().get().getEnd().equals(nodeParent.getTokenRange().get().getEnd())) {
            propagateRangeGrowthOnRight(nodeParent, endNode);
        }
    }

    private String makeMessageForParseException(ParseException exception) {
        StringBuilder sb2 = new StringBuilder("Parse error. Found ");
        StringBuilder sb3 = new StringBuilder();
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[][] iArr = exception.expectedTokenSequences;
            if (i10 >= iArr.length) {
                break;
            }
            int[] iArr2 = iArr[i10];
            if (i11 < iArr2.length) {
                i11 = iArr2.length;
            }
            int i12 = 0;
            while (true) {
                int[] iArr3 = exception.expectedTokenSequences[i10];
                if (i12 < iArr3.length) {
                    treeSet.add(exception.tokenImage[iArr3[i12]]);
                    i12++;
                }
            }
            i10++;
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            sb3.append(" ");
            sb3.append(str);
        }
        Token token = exception.currentToken.next;
        int i13 = 0;
        while (true) {
            if (i13 >= i11) {
                break;
            }
            String add_escapes = ParseException.add_escapes(token.image);
            if (i13 != 0) {
                sb2.append(" ");
            }
            if (token.kind == 0) {
                sb2.append(exception.tokenImage[0]);
                break;
            }
            String str2 = JavadocConstants.ANCHOR_PREFIX_END + add_escapes + JavadocConstants.ANCHOR_PREFIX_END;
            String str3 = exception.tokenImage[token.kind];
            if (str3.equals(str2)) {
                sb2.append(str3);
            } else {
                sb2.append(" ");
                sb2.append(str2);
                sb2.append(" ");
                sb2.append(str3);
            }
            token = token.next;
            i13++;
        }
        int[][] iArr4 = exception.expectedTokenSequences;
        if (iArr4.length != 0) {
            int length = iArr4.length;
            sb2.append(", expected");
            sb2.append(length == 1 ? "" : " one of ");
            sb2.append(sb3.toString());
        }
        return sb2.toString();
    }

    private void propagateRangeGrowthOnRight(final Node node, final Node endNode) {
        if (this.storeTokens) {
            node.getParentNode().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    GeneratedJavaParserBase.this.lambda$propagateRangeGrowthOnRight$0(node, endNode, (Node) obj);
                }
            });
            node.setTokenRange(range(node, endNode));
        }
    }

    public abstract void ReInit(Provider provider);

    public <T extends Node> NodeList<T> add(NodeList<T> list, T obj) {
        if (list == null) {
            list = new NodeList<>();
        }
        list.add((NodeList<T>) obj);
        return list;
    }

    public void addProblem(String message) {
        this.problems.add(new Problem(message, tokenRange(), null));
    }

    public <T extends Node> NodeList<T> addWhenNotNull(NodeList<T> list, T obj) {
        return obj == null ? list : add((NodeList<NodeList<T>>) list, (NodeList<T>) obj);
    }

    public <T extends Node> NodeList<T> emptyNodeList() {
        return new NodeList<>();
    }

    public Expression generateLambda(Expression ret, Statement lambdaBody) {
        LambdaExpr lambdaExpr;
        if (ret instanceof EnclosedExpr) {
            lambdaExpr = new LambdaExpr(range(ret, lambdaBody), add((NodeList<NodeList>) new NodeList(), (NodeList) new Parameter(ret.getTokenRange().orElse(null), new NodeList(), new NodeList(), new UnknownType(), false, new NodeList(), ((NameExpr) ((EnclosedExpr) ret).getInner()).getName())), lambdaBody, true);
        } else {
            if (!(ret instanceof NameExpr)) {
                if (ret instanceof LambdaExpr) {
                    ((LambdaExpr) ret).setBody(lambdaBody);
                    propagateRangeGrowthOnRight(ret, lambdaBody);
                    return ret;
                }
                if (!(ret instanceof CastExpr)) {
                    addProblem("Failed to parse lambda expression! Please create an issue at https://github.com/javaparser/javaparser/issues");
                    return ret;
                }
                CastExpr castExpr = (CastExpr) ret;
                Expression generateLambda = generateLambda(castExpr.getExpression(), lambdaBody);
                castExpr.setExpression(generateLambda);
                propagateRangeGrowthOnRight(castExpr, generateLambda);
                return ret;
            }
            lambdaExpr = new LambdaExpr(range(ret, lambdaBody), add((NodeList<NodeList>) new NodeList(), (NodeList) new Parameter(ret.getTokenRange().orElse(null), new NodeList(), new NodeList(), new UnknownType(), false, new NodeList(), ((NameExpr) ret).getName())), lambdaBody, false);
        }
        return lambdaExpr;
    }

    public CommentsCollection getCommentsCollection() {
        return getTokenSource().getCommentsCollection();
    }

    public abstract Token getNextToken();

    public abstract Token getToken(final int index);

    public abstract GeneratedJavaParserTokenManager getTokenSource();

    public List<JavaToken> getTokens() {
        return getTokenSource().getTokens();
    }

    public ArrayCreationExpr juggleArrayCreation(TokenRange range, List<TokenRange> levelRanges, Type type, NodeList<Expression> dimensions, List<NodeList<AnnotationExpr>> arrayAnnotations, ArrayInitializerExpr arrayInitializerExpr) {
        NodeList nodeList = new NodeList();
        for (int i10 = 0; i10 < arrayAnnotations.size(); i10++) {
            nodeList.add((NodeList) new ArrayCreationLevel(levelRanges.get(i10), dimensions.get(i10), arrayAnnotations.get(i10)));
        }
        return new ArrayCreationExpr(range, type, nodeList, arrayInitializerExpr);
    }

    public Type juggleArrayType(Type partialType, List<ArrayType.ArrayBracketPair> additionalBrackets) {
        Pair<Type, List<ArrayType.ArrayBracketPair>> unwrapArrayTypes = ArrayType.unwrapArrayTypes(partialType);
        return ArrayType.wrapInArrayTypes(unwrapArrayTypes.f59826a, additionalBrackets, unwrapArrayTypes.f59827b).mo1220clone();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.github.javaparser.ast.Node] */
    public JavaToken nodeListBegin(NodeList<?> l10) {
        return (!this.storeTokens || l10.isEmpty()) ? JavaToken.INVALID : l10.get(0).getTokenRange().get().getBegin();
    }

    public JavaToken orIfInvalid(JavaToken firstChoice, JavaToken secondChoice) {
        if (!this.storeTokens) {
            return null;
        }
        Utils.assertNotNull(firstChoice);
        Utils.assertNotNull(secondChoice);
        return (firstChoice.valid() || secondChoice.invalid()) ? firstChoice : secondChoice;
    }

    public <T extends Node> NodeList<T> prepend(NodeList<T> list, T obj) {
        if (list == null) {
            list = new NodeList<>();
        }
        list.addFirst(obj);
        return list;
    }

    public TokenRange range(JavaToken begin, JavaToken end) {
        if (this.storeTokens) {
            return new TokenRange(begin, end);
        }
        return null;
    }

    public TokenRange recover(int recoveryTokenType, ParseException p10) {
        int i10;
        TokenRange tokenRange = null;
        JavaToken javaToken = p10.currentToken != null ? token() : null;
        do {
            i10 = getNextToken().kind;
            if (i10 == recoveryTokenType) {
                break;
            }
        } while (i10 != 0);
        JavaToken javaToken2 = token();
        if (javaToken != null && javaToken2 != null) {
            tokenRange = range(javaToken, javaToken2);
        }
        this.problems.add(new Problem(makeMessageForParseException(p10), tokenRange, p10));
        return tokenRange;
    }

    public TokenRange recoverStatement(int recoveryTokenType, int lBraceType, int rBraceType, ParseException p10) {
        int i10;
        TokenRange tokenRange = null;
        JavaToken javaToken = p10.currentToken != null ? token() : null;
        int i11 = 0;
        do {
            Token token = getToken(1);
            if (token == null || token.kind != rBraceType || i11 != 0) {
                i10 = getNextToken().kind;
                if (i10 == lBraceType) {
                    i11++;
                } else if (i10 == rBraceType) {
                    i11--;
                }
                if (i10 == recoveryTokenType && i11 == 0) {
                    break;
                }
            } else {
                TokenRange range = range(javaToken, token());
                this.problems.add(new Problem(makeMessageForParseException(p10), range, p10));
                return range;
            }
        } while (i10 != 0);
        JavaToken javaToken2 = token();
        if (javaToken != null && javaToken2 != null) {
            tokenRange = range(javaToken, javaToken2);
        }
        this.problems.add(new Problem(makeMessageForParseException(p10), tokenRange, p10));
        return tokenRange;
    }

    public void reset(Provider provider) {
        ReInit(provider);
        this.problems = new ArrayList();
        getTokenSource().reset();
    }

    public Name scopeToName(Expression scope) {
        if (scope.isNameExpr()) {
            SimpleName name = scope.asNameExpr().getName();
            return new Name(name.getTokenRange().orElse(null), null, name.getIdentifier());
        }
        if (scope.isFieldAccessExpr()) {
            FieldAccessExpr asFieldAccessExpr = scope.asFieldAccessExpr();
            return new Name(asFieldAccessExpr.getTokenRange().orElse(null), scopeToName(asFieldAccessExpr.getScope()), asFieldAccessExpr.getName().getIdentifier());
        }
        throw new IllegalStateException("Unexpected expression type: " + scope.getClass().getSimpleName());
    }

    public void setStoreTokens(boolean storeTokens) {
        this.storeTokens = storeTokens;
        getTokenSource().setStoreTokens(storeTokens);
    }

    public void setTokenKind(int newKind) {
        token().setKind(newKind);
    }

    public void setYieldSupported() {
        getTokenSource().setYieldSupported();
    }

    public abstract JavaToken token();

    public TokenRange tokenRange() {
        if (this.storeTokens) {
            return new TokenRange(token(), token());
        }
        return null;
    }

    public String unTripleQuote(String s10) {
        int i10 = s10.charAt(3) == '\r' ? 4 : 3;
        if (s10.charAt(i10) == '\n') {
            i10++;
        }
        return s10.substring(i10, s10.length() - 3);
    }

    public String unquote(String s10) {
        return s10.substring(1, s10.length() - 1);
    }

    public <T> List<T> add(List<T> list, T obj) {
        if (list == null) {
            list = new LinkedList<>();
        }
        list.add(obj);
        return list;
    }

    public TokenRange range(Node begin, JavaToken end) {
        if (this.storeTokens) {
            return new TokenRange(begin.getTokenRange().get().getBegin(), end);
        }
        return null;
    }

    public JavaToken orIfInvalid(JavaToken firstChoice, Node secondChoice) {
        if (this.storeTokens) {
            return orIfInvalid(firstChoice, secondChoice.getTokenRange().get().getBegin());
        }
        return null;
    }

    public TokenRange range(JavaToken begin, Node end) {
        if (this.storeTokens) {
            return new TokenRange(begin, end.getTokenRange().get().getEnd());
        }
        return null;
    }

    public TokenRange range(Node begin, Node end) {
        if (this.storeTokens) {
            return new TokenRange(begin.getTokenRange().get().getBegin(), end.getTokenRange().get().getEnd());
        }
        return null;
    }
}
