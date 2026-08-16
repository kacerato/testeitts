.class public final synthetic Lcom/android/tools/r8/synthesis/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/H2$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/h1;->a:Lcom/android/tools/r8/synthesis/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/h1;->a:Lcom/android/tools/r8/synthesis/m;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/m;->a(Lcom/android/tools/r8/graph/H2;)J

    move-result-wide v0

    return-wide v0
.end method
