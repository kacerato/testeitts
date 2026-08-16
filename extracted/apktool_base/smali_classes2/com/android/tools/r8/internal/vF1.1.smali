.class public final synthetic Lcom/android/tools/r8/internal/vF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Y0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vF1;->b:Lcom/android/tools/r8/internal/Y0;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vF1;->b:Lcom/android/tools/r8/internal/Y0;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Y0;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
