.class public final synthetic Lcom/android/tools/r8/internal/Vg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/O8;

.field public final synthetic b:Lcom/android/tools/r8/internal/S60;

.field public final synthetic c:Lcom/android/tools/r8/internal/S60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vg1;->a:Lcom/android/tools/r8/internal/O8;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vg1;->b:Lcom/android/tools/r8/internal/S60;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Vg1;->c:Lcom/android/tools/r8/internal/S60;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vg1;->a:Lcom/android/tools/r8/internal/O8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vg1;->b:Lcom/android/tools/r8/internal/S60;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Vg1;->c:Lcom/android/tools/r8/internal/S60;

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/H9;

    move-object v4, p2

    check-cast v4, Lcom/android/tools/r8/internal/S60;

    move-object v5, p3

    check-cast v5, Lcom/android/tools/r8/internal/S60;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/kb;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method
