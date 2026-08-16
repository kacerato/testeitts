.class public final synthetic Lcom/android/tools/r8/internal/oT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/LY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/LY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oT0;->a:Lcom/android/tools/r8/internal/LY;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/oT0;->a:Lcom/android/tools/r8/internal/LY;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/LY;->a(Ljava/lang/Object;I)I

    return-void
.end method
