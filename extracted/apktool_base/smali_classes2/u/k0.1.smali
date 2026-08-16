.class public final synthetic Lu/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/o4;

.field public final synthetic b:Lcom/android/tools/r8/ProgramResource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/ProgramResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/k0;->a:Lcom/android/tools/r8/graph/o4;

    iput-object p2, p0, Lu/k0;->b:Lcom/android/tools/r8/ProgramResource;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lu/k0;->a:Lcom/android/tools/r8/graph/o4;

    iget-object v1, p0, Lu/k0;->b:Lcom/android/tools/r8/ProgramResource;

    invoke-static {v0, v1}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/ProgramResource;)V

    return-void
.end method
