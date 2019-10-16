package com.mandarin.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;

import org.krysalis.barcode4j.HumanReadablePlacement;
import org.krysalis.barcode4j.impl.code128.Code128Bean;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;

/**
 * 条形码工具类
 */
public class BarcodeUtil {

    public static void generateFile(String msg, String path) {
        File file = new File(path);
        try {
            //Code39Bean bean = new Code39Bean();
            Code128Bean bean = new Code128Bean();

            // dpi精度
            final int dpi = 150;
            // module宽度
            bean.setModuleWidth(0.21);
            bean.setHeight(15);
            bean.doQuietZone(true);
            bean.setQuietZone(2);
            // 人可读
            bean.setFontName("Helvetica");
            bean.setFontSize(3);
            bean.setMsgPosition(HumanReadablePlacement.HRP_BOTTOM);

            String format = "image/png";
            // 输出到流
            BitmapCanvasProvider canvas = new BitmapCanvasProvider(new FileOutputStream(file), format, dpi,
                    BufferedImage.TYPE_BYTE_BINARY, false, 0);

            // 生成条形码
            bean.generateBarcode(canvas, msg);

            // 结束绘制
            canvas.finish();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String msg = String.format("%010d",2);
        String path = "H:/Projects/barcodes/barcode.png";
        generateFile(msg, path);
        //System.out.println(msg);
    }
}