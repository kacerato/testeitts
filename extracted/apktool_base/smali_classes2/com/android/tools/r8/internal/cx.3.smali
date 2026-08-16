.class public final Lcom/android/tools/r8/internal/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nl0;

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/ny;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V
    .locals 1

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cx;->a:Lcom/android/tools/r8/internal/nl0;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/cx;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/cx;->c:Lcom/android/tools/r8/internal/ny;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/bx;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bx;-><init>(Lcom/android/tools/r8/internal/cx;)V

    return-object v0
.end method
