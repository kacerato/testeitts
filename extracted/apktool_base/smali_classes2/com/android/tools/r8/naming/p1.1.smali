.class public final synthetic Lcom/android/tools/r8/naming/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yo0;


# instance fields
.field public final synthetic a:[Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public synthetic constructor <init>([Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/p1;->a:[Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/p1;->a:[Lcom/android/tools/r8/internal/xw0;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/naming/E;->a([Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;J)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method
