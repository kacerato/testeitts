.class public final synthetic Lcom/android/tools/r8/internal/A71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/cm0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A71;->a:Lcom/android/tools/r8/internal/cm0;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A71;->a:Lcom/android/tools/r8/internal/cm0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cm0;->c(I)Lcom/android/tools/r8/internal/th;

    move-result-object p1

    return-object p1
.end method
