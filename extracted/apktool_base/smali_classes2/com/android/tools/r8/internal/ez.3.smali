.class public final Lcom/android/tools/r8/internal/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gz;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/fz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ez;->a:Lcom/android/tools/r8/internal/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ez;->a:Lcom/android/tools/r8/internal/fz;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-void
.end method
