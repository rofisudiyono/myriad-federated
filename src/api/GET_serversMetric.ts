import axios from './axiosInstance';

export async function getServersMetric({ baseUrl }: { baseUrl: string }) {
  try {
    const result = await axios(baseUrl).get(`/server?average=true`);
    return result.data;
  } catch {
    console.log;
  }
}
