.class public Lcom/android/tools/r8/internal/IO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/IO;


# instance fields
.field public final a:Ljava/util/AbstractCollection;

.field public final b:Lcom/android/tools/r8/internal/LX;

.field public final c:Lcom/android/tools/r8/internal/LX;

.field public final d:Lcom/android/tools/r8/internal/LX;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/IO;

    sget-object v1, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    sget-object v2, Lcom/android/tools/r8/internal/LX;->a:Lcom/android/tools/r8/internal/IX;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/tools/r8/internal/IO;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V

    sput-object v0, Lcom/android/tools/r8/internal/IO;->e:Lcom/android/tools/r8/internal/IO;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;Lcom/android/tools/r8/internal/LX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    iput-object p3, p0, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    iput-object p4, p0, Lcom/android/tools/r8/internal/IO;->d:Lcom/android/tools/r8/internal/LX;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 5

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    invoke-static {v1}, Lcom/android/tools/r8/internal/a2;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/a2;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 17
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    goto :goto_1

    .line 18
    :cond_1
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    goto :goto_1

    .line 19
    :cond_2
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PACKAGE_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    goto :goto_1

    .line 20
    :cond_3
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PROTECTED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    goto :goto_1

    .line 21
    :cond_4
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PUBLIC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    .line 22
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;->addAccessVisibility(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;->setAccessVisibility(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/GI0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/GI0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/HI0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/HI0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/IO;->d:Lcom/android/tools/r8/internal/LX;

    new-instance v2, Lcom/android/tools/r8/internal/II0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/II0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/LX;->a(Ljava/util/function/Consumer;)V

    .line 27
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    invoke-static {v0}, Lcom/android/tools/r8/internal/a2;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/IO;->d:Lcom/android/tools/r8/internal/LX;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/Mk0;Lcom/android/tools/r8/internal/IO;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
