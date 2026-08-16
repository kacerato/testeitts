.class public final synthetic Lcom/android/tools/r8/retrace/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapProducer;


# instance fields
.field public final synthetic a:[[B


# direct methods
.method public synthetic constructor <init>([[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/x;->a:[[B

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/x;->a:[[B

    invoke-static {v0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->b([[B)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
