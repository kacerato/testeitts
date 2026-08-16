.class public final synthetic Lcom/android/tools/r8/internal/YO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bI;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YO0;->a:[I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YO0;->a:[I

    check-cast p2, Lcom/android/tools/r8/internal/u50;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/O00;->a([IILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;

    move-result-object p1

    return-object p1
.end method
