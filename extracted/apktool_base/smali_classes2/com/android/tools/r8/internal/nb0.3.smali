.class public abstract Lcom/android/tools/r8/internal/nb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final referencedInt(I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/shaking/G4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/G4;->a:Lcom/android/tools/r8/shaking/I4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/I4;->s:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    return-void
.end method

.method public final referencedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final referencedStaticField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final referencedString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final shouldProcess(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Bl;->a:Lcom/android/tools/r8/internal/nC;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const-string v0, "L"

    const-string v1, ";"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->A(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
