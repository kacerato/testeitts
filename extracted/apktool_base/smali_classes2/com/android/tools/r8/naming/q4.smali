.class public final synthetic Lcom/android/tools/r8/naming/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/Q0;

.field public final synthetic c:Lcom/android/tools/r8/naming/Q0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/q4;->b:Lcom/android/tools/r8/naming/Q0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/q4;->c:Lcom/android/tools/r8/naming/Q0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/q4;->b:Lcom/android/tools/r8/naming/Q0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/q4;->c:Lcom/android/tools/r8/naming/Q0;

    check-cast p1, Lcom/android/tools/r8/naming/Q0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/naming/Q0;)V

    return-void
.end method
