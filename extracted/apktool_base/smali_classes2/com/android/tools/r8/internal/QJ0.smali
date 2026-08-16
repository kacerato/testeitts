.class public final synthetic Lcom/android/tools/r8/internal/QJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/IA$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IA$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QJ0;->a:Lcom/android/tools/r8/internal/IA$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QJ0;->a:Lcom/android/tools/r8/internal/IA$a;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/JR;->b(Lcom/android/tools/r8/internal/IA$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
