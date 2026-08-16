.class public final synthetic Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/cL;


# instance fields
.field public final synthetic a:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw/a;->a:Ljava/lang/Class;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/metadata/D8BuildMetadata;->b(Ljava/lang/Class;Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
