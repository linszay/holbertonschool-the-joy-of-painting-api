import etl_ep_submatt
import etl_epdate
import etl_paint_color
import etl_paint
import etl_submatt

def main():
    etl_ep_submatt.run_etl()
    etl_epdate.run_etl()
    etl_paint_color.run_etl()
    etl_paint.run_etl()
    etl_submatt.run_etl()

if __name__ == "__main__":
    main()
