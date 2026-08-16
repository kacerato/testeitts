.class public final synthetic Lcom/android/tools/r8/naming/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/Z;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/y2;->a:Lcom/android/tools/r8/naming/Z;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/y2;->a:Lcom/android/tools/r8/naming/Z;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/Z;->a(Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
