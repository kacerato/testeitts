.class public final synthetic Lv/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/M1;->b:Lcom/android/tools/r8/shaking/i;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/M1;->b:Lcom/android/tools/r8/shaking/i;

    check-cast p1, Lcom/android/tools/r8/graph/F0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->d(Lcom/android/tools/r8/graph/F0;)Z

    move-result p1

    return p1
.end method
