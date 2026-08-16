.class public final Lcom/android/tools/r8/internal/C10;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/B10;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ss0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/ss0;->c:Lcom/android/tools/r8/internal/ps0;

    new-instance v1, Lcom/android/tools/r8/internal/C10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/C10;-><init>(Lcom/android/tools/r8/internal/ss0;)V

    new-instance v0, Lcom/android/tools/r8/internal/B10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/B10;-><init>(Lcom/android/tools/r8/internal/C10;)V

    sput-object v0, Lcom/android/tools/r8/internal/C10;->b:Lcom/android/tools/r8/internal/B10;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ss0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C10;->a:Lcom/android/tools/r8/internal/ss0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 4

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/mL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting number, got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/C10;->a:Lcom/android/tools/r8/internal/ss0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ss0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/qL;->a(Ljava/lang/Number;)V

    return-void
.end method
