.class public final synthetic Lcom/android/tools/r8/synthesis/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/z;

.field public final synthetic b:Lcom/android/tools/r8/synthesis/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/synthesis/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/y1;->a:Lcom/android/tools/r8/synthesis/z;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/y1;->b:Lcom/android/tools/r8/synthesis/y;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/y1;->a:Lcom/android/tools/r8/synthesis/z;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/y1;->b:Lcom/android/tools/r8/synthesis/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/y;Ljava/util/function/Consumer;)V

    return-void
.end method
