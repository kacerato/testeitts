.class public final Lcom/android/tools/r8/tracereferences/b;
.super Lcom/android/tools/r8/tracereferences/a;
.source "SourceFile"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/tracereferences/a;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-keeppackagenames "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Missing class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/b;->c:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;->getAccessFlags()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;

    invoke-interface {v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "com.android.tools.r8.tracereferences.obfuscateAllEnums"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    const-string v0, "-keep,allowobfuscation"

    goto :goto_0

    .line 7
    :cond_2
    const-string v0, "-keep"

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;->getAccessFlags()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;

    invoke-interface {v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;->isInterface()Z

    move-result v0

    const-string v1, " {"

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;->getAccessFlags()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;

    invoke-interface {v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "@"

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 11
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "interface "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 13
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;->getAccessFlags()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;

    invoke-interface {v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enum "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 16
    :cond_5
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;)V
    .locals 4

    .line 18
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
