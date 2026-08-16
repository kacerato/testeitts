.class public final Lcom/android/tools/r8/internal/la;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public c:Lcom/android/tools/r8/internal/dH;

.field public final synthetic d:Lcom/android/tools/r8/internal/na;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/na;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/la;->d:Lcom/android/tools/r8/internal/na;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/la;->c:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/android/tools/r8/internal/dH;
    .locals 1

    new-instance p0, Lcom/android/tools/r8/internal/dH;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/ma;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";;"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/la;->c:Lcom/android/tools/r8/internal/dH;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/ma;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/ge;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/la;->d:Lcom/android/tools/r8/internal/na;

    iget-object p1, p1, Lcom/android/tools/r8/internal/na;->a:Ljava/util/HashMap;

    new-instance p2, Lcom/android/tools/r8/internal/Qi1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Qi1;-><init>()V

    .line 3
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dH;

    iput-object p1, p0, Lcom/android/tools/r8/internal/la;->c:Lcom/android/tools/r8/internal/dH;

    return-void
.end method
