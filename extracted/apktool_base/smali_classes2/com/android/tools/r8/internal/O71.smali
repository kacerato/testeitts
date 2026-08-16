.class public final synthetic Lcom/android/tools/r8/internal/O71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/O71;->a:[I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/O71;->a:[I

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/cr0;->a([II)Z

    move-result p1

    return p1
.end method
