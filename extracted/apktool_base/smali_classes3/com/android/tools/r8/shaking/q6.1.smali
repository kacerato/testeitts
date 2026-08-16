.class public final synthetic Lcom/android/tools/r8/shaking/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/I4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/q6;->a:Lcom/android/tools/r8/shaking/I4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q6;->a:Lcom/android/tools/r8/shaking/I4;

    check-cast p1, Lcom/android/tools/r8/internal/bz;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/internal/bz;)V

    return-void
.end method
