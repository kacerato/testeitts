.class public interface abstract Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static block(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const/16 v0, 0x67

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v3, 0x68

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    const/4 p0, 0x3

    aput-object v2, v4, p0

    const/4 p0, 0x4

    aput-object v3, v4, p0

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p0

    return-object p0
.end method

.method public static charToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmChar;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmChar;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/16 v1, 0x6c

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;-><init>()V

    return-object v0
.end method

.method public static conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static conditional(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "properties",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            ">;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ")",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;-><init>()V

    return-object v0
.end method

.method public static list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "separator"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    new-instance v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "separator",
            "preceeding",
            "following"
        }
    .end annotation

    .line 3
    new-instance v6, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "separatorPre",
            "separatorPost",
            "preceeding",
            "following"
        }
    .end annotation

    .line 4
    new-instance v6, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method public static newline(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {p0}, Lcom/github/javaparser/TokenTypes;->eolTokenKind(Lcom/github/javaparser/utils/LineSeparator;)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    return-object v0
.end method

.method public static orphanCommentsBeforeThis()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    return-object v0
.end method

.method public static orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;-><init>()V

    return-object v0
.end method

.method public static semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/16 v1, 0x6b

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static varargs sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmSequence;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 3

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {}, Lcom/github/javaparser/TokenTypes;->spaceTokenKind()I

    move-result v1

    const-string v2, " "

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static string(ILjava/lang/String;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "content"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static stringToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmString;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmString;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static textBlockToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmString;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmString;-><init>(Lcom/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    invoke-direct {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public abstract prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation
.end method
