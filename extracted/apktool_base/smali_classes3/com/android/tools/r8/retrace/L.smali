.class public final synthetic Lcom/android/tools/r8/retrace/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/retrace/d;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/L;->b:Lcom/android/tools/r8/retrace/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/L;->b:Lcom/android/tools/r8/retrace/d;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/tools/r8/retrace/c;->a(Lcom/android/tools/r8/retrace/d;Ljava/lang/String;)V

    return-void
.end method
