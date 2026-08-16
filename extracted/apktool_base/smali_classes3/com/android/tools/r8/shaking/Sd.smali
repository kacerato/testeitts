.class public final synthetic Lcom/android/tools/r8/shaking/Sd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/p;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Sd;->a:Lcom/android/tools/r8/shaking/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Sd;->a:Lcom/android/tools/r8/shaking/p;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/zx0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/p;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/zx0;)V

    return-void
.end method
