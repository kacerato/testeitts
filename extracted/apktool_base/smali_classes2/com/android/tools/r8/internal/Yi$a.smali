.class public Lcom/android/tools/r8/internal/Yi$a;
.super Lcom/android/tools/r8/internal/Yi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/Yi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Block:",
        "Ljava/lang/Object;",
        "StateType:",
        "Lcom/android/tools/r8/internal/D1<",
        "TStateType;>;>",
        "Lcom/android/tools/r8/internal/Yi;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yi;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yi$a;->a:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBlock;)TStateType;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yi$a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/D1;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Yi$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
