.class public final Lcom/android/tools/r8/internal/Ys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/at;


# instance fields
.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ys;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ys;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
