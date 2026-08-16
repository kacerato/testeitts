.class public final Lcom/android/tools/r8/internal/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Io;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Io;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    return-void
.end method


# virtual methods
.method public final endMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 1

    const-string v0, "methodReference"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/tools/r8/internal/CX;->a:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/tools/r8/internal/CX;->b:Ljava/lang/String;

    return-void
.end method

.method public final referencedInt(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Io;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->a:Lcom/android/tools/r8/internal/Tl0;

    new-instance v2, Lcom/android/tools/r8/internal/Ho;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/Ho;-><init>(Lcom/android/tools/r8/internal/ng0;Lcom/android/tools/r8/internal/Io;)V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final referencedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDescriptor"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/Io;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/CX;->a:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/CX;->b:Ljava/lang/String;

    const-string v2, "<clinit>"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "android/content/res/Resources"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "getIdentifier"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I"

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/android/tools/r8/internal/b3;->a:Ljava/util/LinkedHashSet;

    const/16 v1, 0x2f

    const/16 v3, 0x2e

    invoke-static {p1, v1, v3}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Tf0;->c:Lcom/android/tools/r8/internal/V10;

    const-string v4, "model.obfuscatedClasses"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/tools/r8/internal/V10;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iput-boolean v2, p3, Lcom/android/tools/r8/internal/Tf0;->e:Z

    :cond_3
    const-string p3, "android/webkit/WebView"

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "load"

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iput-boolean v2, p1, Lcom/android/tools/r8/internal/Tf0;->f:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final referencedStaticField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Io;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->c:Lcom/android/tools/r8/internal/V10;

    new-instance v2, Lcom/android/tools/r8/internal/Cc;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-static {p1, v3, v4}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/internal/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/android/tools/r8/internal/V10;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lcom/android/tools/r8/internal/V10;->a:Lcom/android/tools/r8/internal/nC;

    iget-object p2, v2, Lcom/android/tools/r8/internal/Cc;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, v2, Lcom/android/tools/r8/internal/Cc;->a:Ljava/lang/String;

    :cond_1
    const-string p2, "obfuscatedClasses[obfusc\u2026bfuscatedMethod.className"

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/tools/r8/internal/Cc;

    iget-object v1, v2, Lcom/android/tools/r8/internal/Cc;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Lcom/android/tools/r8/internal/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/android/tools/r8/internal/Cc;

    iget-object p2, p1, Lcom/android/tools/r8/internal/Cc;->a:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    const-string v1, "R$"

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/tools/r8/internal/Cc;->a:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/lg0;

    if-eqz p2, :cond_3

    iget-object v0, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cc;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/ng0;

    invoke-static {p2}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final referencedString(Ljava/lang/String;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Io;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_8

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    if-nez v2, :cond_5

    const-string v2, "android_res/"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public final shouldProcess(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "internalName"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->c:Lcom/android/tools/r8/internal/V10;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-static {p1, v2, v3}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/tools/r8/internal/V10;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "R$"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lg0;

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v0, Lcom/android/tools/r8/internal/Io;->c:Z

    return v2
.end method

.method public final startMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 2

    const-string v0, "methodReference"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/q2;->a:Lcom/android/tools/r8/internal/Io;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/CX;->a:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/internal/CX;->b:Ljava/lang/String;

    return-void
.end method
