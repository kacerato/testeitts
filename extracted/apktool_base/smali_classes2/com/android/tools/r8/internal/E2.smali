.class public Lcom/android/tools/r8/internal/E2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    const-string v1, "int android.app.appsearch.AppSearchResult.RESULT_DENIED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-string v1, "int android.app.appsearch.AppSearchResult.RESULT_RATE_LIMITED"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    .line 5
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-array v7, v3, [Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {v0, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v7, "capacity"

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    .line 7
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 9
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 10
    const-string v8, "codePointAt"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 11
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 13
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 14
    const-string v8, "codePointBefore"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 15
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 17
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 18
    const-string v8, "codePointCount"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 19
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 21
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 22
    const-string v8, "ensureCapacity"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 23
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->P1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8, v8, v9, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 25
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 26
    const-string v8, "getChars"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 27
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 29
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 30
    const-string v8, "indexOf"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 31
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 33
    invoke-virtual {v0, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 34
    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 35
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 37
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 38
    const-string v8, "lastIndexOf"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 39
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 41
    invoke-virtual {v0, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 42
    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 43
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 45
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 46
    const-string v8, "offsetByCodePoints"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 47
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 49
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 50
    const-string v8, "setCharAt"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 51
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 53
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 54
    const-string v8, "setLength"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 55
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 57
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 58
    const-string v8, "substring"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 59
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 61
    invoke-virtual {v0, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 62
    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 63
    invoke-interface {v1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v8, v3, [Lcom/android/tools/r8/graph/M2;

    .line 65
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v8, "trimToSize"

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 66
    invoke-interface {v1, v5, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 67
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->l3:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->k3:Lcom/android/tools/r8/graph/M2;

    new-array v6, v3, [Lcom/android/tools/r8/graph/M2;

    .line 68
    invoke-virtual {v0, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 69
    const-string v6, "getMap"

    invoke-virtual {v0, v2, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    .line 70
    invoke-interface {v1, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    const-string v14, "Landroid/nfc/tech/MifareUltralight;"

    const-string v15, "Landroid/nfc/tech/NfcV;"

    const-string v6, "Landroid/nfc/tech/Ndef;"

    const-string v7, "Landroid/nfc/tech/NfcA;"

    const-string v8, "Landroid/nfc/tech/NfcB;"

    const-string v9, "Landroid/nfc/tech/NfcBarcode;"

    const-string v10, "Landroid/nfc/tech/NfcF;"

    const-string v11, "Landroid/nfc/tech/NdefFormatable;"

    const-string v12, "Landroid/nfc/tech/IsoDep;"

    const-string v13, "Landroid/nfc/tech/MifareClassic;"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v4, "Landroid/nfc/Tag;"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    move v6, v3

    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    .line 73
    aget-object v7, v2, v6

    .line 74
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 75
    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    new-array v9, v3, [Lcom/android/tools/r8/graph/M2;

    .line 76
    invoke-virtual {v0, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    .line 77
    const-string v9, "isConnected"

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    sget-object v9, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    .line 78
    invoke-interface {v1, v8, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    new-array v8, v3, [Lcom/android/tools/r8/graph/M2;

    .line 80
    invoke-virtual {v0, v4, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    const-string v10, "getTag"

    invoke-virtual {v0, v7, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 81
    invoke-interface {v1, v8, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v10, v3, [Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-virtual {v0, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    const-string v10, "close"

    invoke-virtual {v0, v7, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 84
    invoke-interface {v1, v8, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v10, v3, [Lcom/android/tools/r8/graph/M2;

    .line 86
    invoke-virtual {v0, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    const-string v10, "connect"

    invoke-virtual {v0, v7, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 87
    invoke-interface {v1, v7, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    :cond_1
    const-string v2, "Landroid/webkit/CookieSyncManager;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 89
    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v6, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 90
    const-string v6, "stopSync"

    const-string v7, "run"

    const-string v8, "sync"

    const-string v9, "resetSync"

    const-string v10, "startSync"

    filled-new-array {v8, v9, v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    move v7, v3

    :goto_2
    const/4 v8, 0x5

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    .line 91
    invoke-virtual {v0, v2, v4, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    sget-object v9, Lcom/android/tools/r8/internal/C2;->p:Lcom/android/tools/r8/internal/C2;

    .line 92
    invoke-interface {v1, v8, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 93
    :cond_2
    const-string v2, "Ljava/time/temporal/ValueRange;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 94
    const-string v4, "Ljava/time/chrono/ChronoLocalDate;"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 95
    const-string v6, "Ljava/time/temporal/Temporal;"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 96
    const-string v7, "Ljava/time/temporal/TemporalField;"

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 97
    const-string v8, "Ljava/time/temporal/TemporalUnit;"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 98
    const-string v9, "Ljava/time/temporal/TemporalAmount;"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 99
    const-string v10, "Ljava/time/temporal/TemporalAdjuster;"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 100
    const-string v11, "Ljava/time/chrono/MinguoDate;"

    const-string v12, "Ljava/time/chrono/ThaiBuddhistDate;"

    const-string v13, "Ljava/time/chrono/JapaneseDate;"

    const-string v14, "Ljava/time/chrono/HijrahDate;"

    filled-new-array {v13, v11, v14, v12}, [Ljava/lang/String;

    move-result-object v11

    move v12, v3

    :goto_3
    const/4 v13, 0x4

    if-ge v12, v13, :cond_4

    .line 101
    aget-object v13, v11, v12

    .line 102
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 103
    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-array v5, v3, [Lcom/android/tools/r8/graph/M2;

    .line 104
    invoke-virtual {v0, v15, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    const-string v15, "lengthOfMonth"

    invoke-virtual {v0, v13, v5, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    sget-object v15, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 105
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v16, v11

    new-array v11, v3, [Lcom/android/tools/r8/graph/M2;

    .line 107
    invoke-virtual {v0, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    const-string v11, "lengthOfYear"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 108
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 110
    invoke-virtual {v0, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 111
    const-string v11, "isSupported"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 112
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 114
    invoke-virtual {v0, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 115
    const-string v11, "range"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 116
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 118
    invoke-virtual {v0, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 119
    const-string v11, "getLong"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 120
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    const-string v5, "Ljava/time/chrono/ChronoLocalDateTime;"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 122
    const-string v11, "Ljava/time/LocalTime;"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    filled-new-array {v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 123
    invoke-virtual {v0, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 124
    const-string v11, "atTime"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 125
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    const-string v5, "Ljava/time/chrono/ChronoPeriod;"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 127
    invoke-virtual {v0, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 128
    const-string v11, "until"

    invoke-virtual {v0, v13, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 129
    invoke-interface {v1, v5, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v2

    new-array v2, v3, [Lcom/android/tools/r8/graph/M2;

    .line 131
    invoke-virtual {v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v5, "toEpochDay"

    invoke-virtual {v0, v13, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 132
    invoke-interface {v1, v2, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 134
    invoke-virtual {v0, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v13, v2, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 136
    invoke-interface {v1, v2, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    const-string v2, "Ljava/time/chrono/Era;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-array v5, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 138
    const-string v5, "getEra"

    invoke-virtual {v0, v13, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 139
    invoke-interface {v1, v2, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    const-string v2, "Ljava/time/chrono/Chronology;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-array v5, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 141
    const-string v5, "getChronology"

    invoke-virtual {v0, v13, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 142
    invoke-interface {v1, v2, v15}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    filled-new-array {v4, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move v11, v3

    :goto_4
    const/4 v5, 0x2

    if-ge v11, v5, :cond_3

    .line 144
    aget-object v15, v2, v11

    .line 145
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 146
    invoke-virtual {v0, v15, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 147
    const-string v3, "minus"

    invoke-virtual {v0, v13, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    move-object/from16 v18, v2

    sget-object v2, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 148
    invoke-interface {v1, v5, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    filled-new-array {v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 150
    invoke-virtual {v0, v15, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 151
    invoke-virtual {v0, v13, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 152
    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 154
    invoke-virtual {v0, v15, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 155
    const-string v5, "plus"

    invoke-virtual {v0, v13, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 156
    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    filled-new-array {v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 158
    invoke-virtual {v0, v15, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 159
    invoke-virtual {v0, v13, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 160
    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 162
    invoke-virtual {v0, v15, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 163
    const-string v5, "with"

    invoke-virtual {v0, v13, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 164
    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    filled-new-array {v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 166
    invoke-virtual {v0, v15, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v13, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 168
    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 169
    :cond_4
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/tools/r8/graph/M2;

    .line 170
    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 171
    const-string v4, "isLeapYear"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 172
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "void android.adservices.customaudience.CustomAudienceManager.scheduleCustomAudienceUpdate(android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest, java.util.concurrent.Executor, android.adservices.common.AdServicesOutcomeReceiver)"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "androidx.annotation.RecentlyNullable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "androidx.annotation.RecentlyNonNull"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.annotation.Nullable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.annotation.NonNull"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.annotation.FlaggedApi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.adservices.customaudience.PartialCustomAudience"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.adservices.customaudience.PartialCustomAudience$Builder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest$Builder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.adservices.customaudience.ScheduleCustomAudienceUpdateRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
