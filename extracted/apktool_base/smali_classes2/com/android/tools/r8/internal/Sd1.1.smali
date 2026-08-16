.class public final synthetic Lcom/android/tools/r8/internal/Sd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sd1;->a:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sd1;->a:Ljava/util/function/ObjIntConsumer;

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/i80;->a(Ljava/util/function/ObjIntConsumer;Lcom/android/tools/r8/internal/fv;I)V

    return-void
.end method
