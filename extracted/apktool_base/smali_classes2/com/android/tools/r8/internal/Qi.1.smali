.class public abstract Lcom/android/tools/r8/internal/Qi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Pi;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "identifier"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EU;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qi;->a:Ljava/lang/String;

    return-object v0
.end method
