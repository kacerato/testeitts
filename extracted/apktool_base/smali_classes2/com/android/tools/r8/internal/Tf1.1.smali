.class public final synthetic Lcom/android/tools/r8/internal/Tf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tf1;->a:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tf1;->a:Ljava/util/function/IntConsumer;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/jm;->a(Ljava/util/function/IntConsumer;I)V

    return-void
.end method
