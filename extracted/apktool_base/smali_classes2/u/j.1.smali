.class public final synthetic Lu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/H2$a;


# instance fields
.field public final synthetic a:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/j;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)J
    .locals 2

    iget-object v0, p0, Lu/j;->a:Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/C;->a(Ljava/lang/Long;Lcom/android/tools/r8/graph/H2;)J

    move-result-wide v0

    return-wide v0
.end method
